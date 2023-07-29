package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import org.springframework.data.jpa.repository.JpaRepository

interface CartRepository : JpaRepository<Cart, Long> {
    fun findCartByRestaurantIdAndCustomerUserId(restaurantId:Long,customerUserId:Long):Cart?
}