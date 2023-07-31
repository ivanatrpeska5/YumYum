package com.sorsix.backend.service

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Location
import com.sorsix.backend.model.Order
import com.sorsix.backend.model.Payment
import com.sorsix.backend.model.dto.OrderDTO
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
}