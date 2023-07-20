package com.sorsix.backend.model

import java.time.LocalDate
import javax.persistence.*

@Entity
class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    open var id: Long? = null

    open val dateCreated: LocalDate? = null


}