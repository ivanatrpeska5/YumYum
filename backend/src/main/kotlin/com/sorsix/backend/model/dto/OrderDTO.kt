package com.sorsix.backend.model.dto

import com.sorsix.backend.model.enumeration.PaymentMethod

data class OrderDTO (
    val sessionId: String,
    val street: String,
    val number: String,
    val paymentMethod: PaymentMethod
)