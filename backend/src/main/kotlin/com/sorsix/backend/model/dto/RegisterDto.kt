package com.sorsix.backend.model.dto

data class RegisterDto(
    val name: String,
    val surname: String,
    val email: String,
    val phone: String,
    val password: String,
    val username: String,
    val role: String,
    val restaurantId: Long?
) {
}