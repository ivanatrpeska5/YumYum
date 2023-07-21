package com.sorsix.backend.repository;

import com.sorsix.backend.model.Restaurant
import org.springframework.data.jpa.repository.JpaRepository

interface RestaurantRepository : JpaRepository<Restaurant, Long> {
}