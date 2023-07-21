package com.sorsix.backend.repository;

import com.sorsix.backend.model.Food
import org.springframework.data.jpa.repository.JpaRepository

interface FoodRepository : JpaRepository<Food, Long> {
}