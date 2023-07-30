package com.sorsix.backend.service

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Location
import com.sorsix.backend.model.Order
import com.sorsix.backend.model.dto.OrderDTO
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.model.enumeration.ShoppingCartStatus
import com.sorsix.backend.repository.CartRepository
import com.sorsix.backend.repository.CustomerRepository
import com.sorsix.backend.repository.LocationRepository
import com.sorsix.backend.repository.OrderRepository
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.stereotype.Service

@Service
class OrderService(
    private val orderRepository: OrderRepository,
    private val sessionRegistry: InMemorySessionRegistry,
    private val customerRepository: CustomerRepository,
    private val cartRepository: CartRepository,
    private val locationRepository: LocationRepository
) {

    fun createOrder(orderDTO: OrderDTO) {
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