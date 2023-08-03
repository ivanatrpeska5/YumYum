package com.sorsix.backend.service

import com.sorsix.backend.model.*
import com.sorsix.backend.model.dto.CartInfoDTO
import com.sorsix.backend.model.dto.FoodNameQuantityDTO
import com.sorsix.backend.model.dto.OrderDTO
import com.sorsix.backend.model.dto.RestaurantOrderDTO
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.model.enumeration.ShoppingCartStatus
import com.sorsix.backend.repository.*
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.stereotype.Service

@Service
class OrderService(
    private val orderRepository: OrderRepository,
    private val sessionRegistry: InMemorySessionRegistry,
    private val customerRepository: CustomerRepository,
    private val cartRepository: CartRepository,
    private val locationRepository: LocationRepository,
    private val paymentRepository: PaymentRepository,
    private val restaurantEmployeeRepository: RestaurantEmployeeRepository,
) {

    fun createOrder(orderDTO: OrderDTO, payment: Payment?) {
        val username: String = sessionRegistry.getUsernameForSession(orderDTO.sessionId)!!
        val customer = customerRepository.findCustomerByUsername(username)
        val carts = cartRepository.findAllByCustomerUserIdAndStatus(customer.userId, ShoppingCartStatus.ACTIVE);
        val location = locationRepository.save(
            Location(
                locationRepository.count() + 1,
                street = orderDTO.street,
                number = orderDTO.number
            )
        )
        for (cart in carts) {
            cart.status = ShoppingCartStatus.ORDERED
            cartRepository.save(cart)
            cartRepository.save(
                Cart(
                    cartRepository.count() + 1,
                    customer,
                    restaurant = cart.restaurant,
                    status = ShoppingCartStatus.ACTIVE
                )
            )
            if(payment != null) {
                val payment1 = Payment(
                    id = null,
                    cardHolderName = payment.cardHolderName,
                    securityCode = payment.securityCode,
                    expYY = payment.expYY,
                    expMM = payment.expMM,
                    cardNumber = payment.cardNumber,
                    cardType = payment.cardType,
                )
                paymentRepository.save(payment1)
                orderRepository.save(
                    Order(
                        status = OrderStatus.Created,
                        location = location,
                        paymentMethod = orderDTO.paymentMethod,
                        customer = customer,
                        cart = cart,
                        payment = payment1
                    )
                )
            }
            else{
                orderRepository.save(
                    Order(
                        status = OrderStatus.Created,
                        location = location,
                        paymentMethod = orderDTO.paymentMethod,
                        customer = customer,
                        cart = cart,
                    )
                )
            }
        }
    }

    fun getNewOrdersForRestaurant(sessionId: String): MutableList<RestaurantOrderDTO> {
        val username: String = sessionRegistry.getUsernameForSession(sessionId)!!
        val employee: RestaurantEmployee = restaurantEmployeeRepository.findRestaurantEmployeeByUsername(username)
        val restaurantId = employee.restaurant.id
        val orders : List<Order>  =  orderRepository.findAllByStatusAndCartRestaurantId(OrderStatus.Created, restaurantId)
        val restaurantOrders: MutableList<RestaurantOrderDTO> = mutableListOf()
        for(order in orders){
            val foodNameQuantityDTO: List<FoodNameQuantityDTO> = order.cart.cartConsistsOfFoodList.map {
                FoodNameQuantityDTO(
                    it.food.name,
                    it.quantity
                )
            }
            val restaurantOrderDTO = RestaurantOrderDTO(
                order.id,
                order.dateCreated,
                order.status,
                order.location,
                order.customer.userId,
                order.customer.name,
                order.customer.surname,
                order.customer.username,
                order.paymentMethod,
                order.cart.id,
                foodNameQuantityDTO
            )
            restaurantOrders.add(restaurantOrderDTO)
        }
        return restaurantOrders
    }
}