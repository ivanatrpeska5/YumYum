package com.sorsix.backend.model.dto

data class RestaurantOrdersDTO(
    val name: String,
    val series: List<OrderSeriesDTO>
)