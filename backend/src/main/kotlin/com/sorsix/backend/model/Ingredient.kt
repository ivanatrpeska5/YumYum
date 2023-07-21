package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Ingredient(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long,
    private var name:String
)