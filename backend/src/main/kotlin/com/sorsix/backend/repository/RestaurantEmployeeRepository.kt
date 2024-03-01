package com.sorsix.backend.repository

import com.sorsix.backend.model.RestaurantEmployee
import org.springframework.data.jpa.repository.JpaRepository

interface RestaurantEmployeeRepository : JpaRepository<RestaurantEmployee, Long> {
    fun findRestaurantEmployeeByUsername(username: String): RestaurantEmployee

    fun findByUsername(username: String): RestaurantEmployee?
}