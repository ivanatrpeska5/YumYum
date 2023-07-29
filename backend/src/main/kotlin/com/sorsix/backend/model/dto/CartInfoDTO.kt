package com.sorsix.backend.model.dto

data class CartInfoDTO(
    val cartConsistsOfFoodId: Long,
    val cartId: Long,
    var foodId: Long,
    var photo: String,
    var name: String,
    var price: Double,
    var quantity: Long,
    var restaurantId: Long,
    var restaurantName: String
)
