package com.sorsix.backend.repository;

import com.sorsix.backend.model.Order
import org.springframework.data.jpa.repository.JpaRepository

interface OrderRepository : JpaRepository<Order, Long> {
}