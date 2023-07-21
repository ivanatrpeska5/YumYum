package com.sorsix.backend.repository;

import com.sorsix.backend.model.Payment
import org.springframework.data.jpa.repository.JpaRepository

interface PaymentRepository : JpaRepository<Payment, Long> {
}