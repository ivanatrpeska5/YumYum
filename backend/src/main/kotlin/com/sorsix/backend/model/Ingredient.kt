package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonBackReference
import javax.persistence.*


@Entity
class Ingredient(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var name:String,

)