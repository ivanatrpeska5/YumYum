package com.sorsix.backend.repository

import com.sorsix.backend.model.statistics.RevenueByRestaurant
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface RevenueByRestaurantRepository : JpaRepository<RevenueByRestaurant, Long> {}
