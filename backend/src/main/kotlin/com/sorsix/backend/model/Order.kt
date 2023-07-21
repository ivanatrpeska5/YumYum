package com.sorsix.backend.model

import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private val id: Long,

    private val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated
    private var status:OrderStatus)

