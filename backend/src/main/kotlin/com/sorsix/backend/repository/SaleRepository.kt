package com.sorsix.backend.repository

import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Sale
import org.springframework.data.jpa.repository.JpaRepository
import java.time.LocalDate
import java.util.*

interface SaleRepository : JpaRepository<Sale, Long> {
    override fun findById(id: Long): Optional<Sale>

    fun findByFoodAndIsActiveTrue(food: Food): Sale?

    fun findAllByDateToBeforeAndIsActiveTrue(dateTo: LocalDate): List<Sale>

    fun findAllByIsActiveTrue(): List<Sale>

}