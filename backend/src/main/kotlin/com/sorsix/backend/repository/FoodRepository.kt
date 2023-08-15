package com.sorsix.backend.repository;

import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Restaurant
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface FoodRepository : JpaRepository<Food, Long> {
    fun findFoodsByRestaurantId(restaurantId: Long): List<Food>
    fun findFoodById(foodId: Long): Food
    fun findTop5ByOrderByIdDesc(): List<Food>
}