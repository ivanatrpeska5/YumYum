package com.sorsix.backend.model

import java.time.LocalDate
import javax.persistence.*

@Entity
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private val id: Long,

    private val dateCreated: LocalDate,

    @Enumerated
    private var status:OrderStatus) {




}