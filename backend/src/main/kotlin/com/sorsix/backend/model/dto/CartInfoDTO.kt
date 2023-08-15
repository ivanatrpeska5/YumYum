package com.sorsix.backend.model.dto

data class CartInfoDTO(
    val cartConsistsOfFoodId: Long,
    val cartId: Long,
    val foodId: Long,
    val photo: String,
    val name: String,
    val price: Double,
    val quantity: Long,
    val restaurantId: Long,
    val restaurantName: String
)
