package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonBackReference
import javax.persistence.*


@Entity
class Ingredient(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private var id: Long,
    private var name:String,
    @ManyToMany(mappedBy = "ingredientsList")
    @JsonBackReference
    val recipeList: MutableList<Order> = arrayListOf()
)