package com.sorsix.backend.repository;

import com.sorsix.backend.model.manytomany.FoodBelongsToCategory
import org.springframework.data.jpa.repository.JpaRepository

interface FoodBelongsToCategoryRepository : JpaRepository<FoodBelongsToCategory, Long> {
}