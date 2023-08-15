package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Location(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,
    val street: String,
    val number: String
)