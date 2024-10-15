package com.sorsix.backend.model

import java.time.LocalDate
import javax.persistence.*

@Entity
data class Sale(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    var percentage: Int,
    var dateFrom: LocalDate,
    val dateTo: LocalDate,
    @ManyToOne
    var food: Food,
    var isActive: Boolean
) {

}