package com.sorsix.backend.repository

import com.sorsix.backend.model.Restaurant
import org.springframework.data.jpa.repository.JpaRepository
import java.util.*

interface RestaurantRepository : JpaRepository<Restaurant, Long> {
    override fun findById(id: Long): Optional<Restaurant>

    fun findByNameContainingIgnoreCase(query: String): List<Restaurant>

    fun findTop5ByOrderByAverageRatingDesc(): List<Restaurant>

}