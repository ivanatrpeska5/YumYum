package com.sorsix.backend.model.dto

import com.sorsix.backend.model.Location

class AddRestaurantRequest(
    val name: String,
    val location: Location,
    val logo: String,
    val photo: String
)