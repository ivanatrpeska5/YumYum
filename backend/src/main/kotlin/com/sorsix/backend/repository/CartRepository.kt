package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Customer
import com.sorsix.backend.model.enumeration.ShoppingCartStatus
import org.springframework.data.jpa.repository.JpaRepository

interface CartRepository : JpaRepository<Cart, Long> {
    fun findCartByRestaurantIdAndCustomerUserIdAndStatus(restaurantId:Long,customerUserId:Long, status: ShoppingCartStatus):Cart?

    fun findAllByCustomer(customer: Customer):Set<Cart>

    fun findAllByCustomerUserIdAndStatus(customerUserId: Long, status: ShoppingCartStatus):List<Cart>
}