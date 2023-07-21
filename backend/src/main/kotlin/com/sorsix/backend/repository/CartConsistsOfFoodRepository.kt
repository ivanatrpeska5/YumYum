package com.sorsix.backend.repository;

import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import org.springframework.data.jpa.repository.JpaRepository

interface CartConsistsOfFoodRepository : JpaRepository<CartConsistsOfFood, Long> {
}