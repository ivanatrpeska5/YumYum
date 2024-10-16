package com.sorsix.backend.repository

import com.sorsix.backend.model.statistics.OrdersOverTimeByRestaurant
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository


@Repository
interface OrdersOverTimeByRestaurantRepository : JpaRepository<OrdersOverTimeByRestaurant, Long> {}
