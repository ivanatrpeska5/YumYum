package com.sorsix.backend.model.dto

data class AddFoodToCartDto(
    val foodId: Long, val quantity: Long, val sessionId: String
) {
}