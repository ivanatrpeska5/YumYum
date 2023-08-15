package com.sorsix.backend.repository;

import com.sorsix.backend.model.DeliveryMan
import org.springframework.data.jpa.repository.JpaRepository

interface DeliveryManRepository : JpaRepository<DeliveryMan, Long> {

    fun findByUsername(username: String): DeliveryMan;
}