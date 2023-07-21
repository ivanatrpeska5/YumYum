package com.sorsix.backend.repository;

import com.sorsix.backend.model.Ingredient
import org.springframework.data.jpa.repository.JpaRepository

interface IngredientRepository : JpaRepository<Ingredient, Long> {
}