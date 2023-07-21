package com.sorsix.backend.model

import java.time.LocalDate
import javax.persistence.*

@Entity
class Order (
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var id: Long,
    val dateCreated: LocalDate = LocalDate.now()
)