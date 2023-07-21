package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import org.springframework.data.jpa.repository.JpaRepository

interface CartRepository : JpaRepository<Cart, Long> {
}