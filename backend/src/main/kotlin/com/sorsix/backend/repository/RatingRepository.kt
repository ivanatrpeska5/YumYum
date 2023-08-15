package com.sorsix.backend.repository

import com.sorsix.backend.model.Rating
import org.springframework.data.jpa.repository.JpaRepository

interface RatingRepository : JpaRepository<Rating, Long> {
    fun findByRestaurantId(restaurantId: Long): List<Rating>
}