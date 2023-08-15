package com.sorsix.backend.model.dto

data class UserSessionDto(var sessionId: String, var role: String, var restaurantId: Long? = null) {
}