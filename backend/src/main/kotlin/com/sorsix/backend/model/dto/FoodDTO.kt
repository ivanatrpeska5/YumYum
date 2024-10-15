package com.sorsix.backend.model.dto

import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Ingredient
import com.sorsix.backend.model.Restaurant

data class FoodDTO(
    val id: Long? = null,
    val photo: String,
    val name: String,
    val price: Double,
    val priceWithDiscount: Double? = null,
    val restaurant: Restaurant,
    val ingredientsSet: Set<Ingredient>,
    val categorySet: Set<Category>,
) {
}