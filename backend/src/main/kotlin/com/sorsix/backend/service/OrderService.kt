package com.sorsix.backend.service


import com.sorsix.backend.model.*
import com.sorsix.backend.model.dto.FoodNameQuantityDTO
import com.sorsix.backend.model.Location
import com.sorsix.backend.model.Order
import com.sorsix.backend.model.Payment
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
    private val deliveryManRepository: DeliveryManRepository,
) {

    fun createOrder(orderDTO: OrderDTO, payment: Payment?) {
        val username: String = sessionRegistry.getUsernameForSession(orderDTO.sessionId)!!
        val customer = customerRepository.findCustomerByUsername(username)
        val carts = cartRepository.findAllByCustomerUserIdAndStatus(customer.userId!!, ShoppingCartStatus.ACTIVE);
        val location = locationRepository.save(
            Location(
                street = orderDTO.street,
                number = orderDTO.number
            )
        )
        for (cart in carts) {
            cart.status = ShoppingCartStatus.ORDERED
            cartRepository.save(cart)
            println(orderDTO.paymentMethod)
            if (payment != null) {
                val payment1 = Payment(
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
            } else {
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
        val orders: List<Order> = orderRepository.findAllByStatusAndCartRestaurantId(OrderStatus.Created, restaurantId)
        val restaurantOrders: MutableList<RestaurantOrderDTO> = mutableListOf()
        for (order in orders) {
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
                order.customer.userId!!,
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

    fun getCustomerOrder(sessionId: String): MutableList<Order> {
        val username: String = sessionRegistry.getUsernameForSession(sessionId)!!
        val customer = customerRepository.findCustomerByUsername(username)
        return orderRepository.findOrdersByCustomerOrderByIdDesc(customer)

    }


    fun changeOrderStatus(orderId: Long, status: OrderStatus): Order {
        val order = orderRepository.findById(orderId).get();
        order.status = status;
        orderRepository.save(order);
        return order;
    }

    fun getPreparedOrders(): List<Order> {
        val orders = orderRepository.findAllByStatus(OrderStatus.Prepared)
        return orders;
    }

    fun acceptOrder(sessionId: String, orderId: Long): Order {
        val username = sessionRegistry.getUsernameForSession(sessionId);
        val deliveryMan = deliveryManRepository.findByUsername(username!!);
        val order = orderRepository.findById(orderId).get();
        order.deliveryMan = deliveryMan;
        order.status = OrderStatus.InDelivery;
        orderRepository.save(order);
        return order;
    }

    fun getInDeliveryOrders(sessionId: String): List<Order> {
        val username = sessionRegistry.getUsernameForSession(sessionId);
        val deliveryMan = deliveryManRepository.findByUsername(username!!);
        val orders = orderRepository.getOrdersByDeliveryManAndStatus(deliveryMan, OrderStatus.InDelivery);
        return orders;
    }

    fun getDeliveredOrders(sessionId: String): List<Order> {
        val username = sessionRegistry.getUsernameForSession(sessionId);
        val deliveryMan = deliveryManRepository.findByUsername(username!!);
        val orders = orderRepository.getOrdersByDeliveryManAndStatus(deliveryMan, OrderStatus.Delivered);
        return orders;
    }


}