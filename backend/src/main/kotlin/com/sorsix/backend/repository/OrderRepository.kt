package com.sorsix.backend.repository;

import com.sorsix.backend.model.Order
import com.sorsix.backend.model.enumeration.OrderStatus
import org.springframework.data.jpa.repository.JpaRepository

interface OrderRepository : JpaRepository<Order, Long> {
    fun findAllByStatusAndCartRestaurantId(status: OrderStatus, restaurantId: Long) : List<Order>
}