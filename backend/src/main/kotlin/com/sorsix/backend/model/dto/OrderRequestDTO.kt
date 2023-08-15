package com.sorsix.backend.model.dto

import com.sorsix.backend.model.Payment

data class OrderRequestDTO(
    val orderFormData: OrderDTO,
    val paymentFormData: Payment?
)