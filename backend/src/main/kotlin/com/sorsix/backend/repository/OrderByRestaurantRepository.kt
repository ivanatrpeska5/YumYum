package com.sorsix.backend.repository

import com.sorsix.backend.model.statistics.OrdersByRestaurant
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface OrderByRestaurantRepository : JpaRepository<OrdersByRestaurant, Long> {}
