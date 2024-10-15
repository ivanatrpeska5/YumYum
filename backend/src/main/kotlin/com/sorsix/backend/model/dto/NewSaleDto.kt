package com.sorsix.backend.model.dto

import java.time.LocalDate

data class NewSaleDto(
    val dateFrom: LocalDate,
    val dateTo: LocalDate,
    val percentage: Int,
    val foodId: Long
) {
}