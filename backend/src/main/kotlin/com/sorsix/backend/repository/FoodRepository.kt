package com.sorsix.backend.repository

import com.sorsix.backend.model.Food
import org.springframework.data.jpa.repository.JpaRepository

interface FoodRepository : JpaRepository<Food, Long> {
    fun findFoodsByRestaurantId(restaurantId: Long): List<Food>
    fun findFoodById(foodId: Long): Food
    fun findTop5ByOrderByIdDesc(): List<Food>
}