package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Customer
import org.springframework.data.jpa.repository.JpaRepository

interface CartRepository : JpaRepository<Cart, Long> {
    fun findCartByRestaurantIdAndCustomerUserId(restaurantId:Long,customerUserId:Long):Cart?

    fun findAllByCustomer(customer: Customer):Set<Cart>
}