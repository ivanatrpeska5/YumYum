package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonManagedReference
import javax.persistence.*


@Entity
class Food(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var photo:String,
    var name:String,
    var price:Double,

    @ManyToOne
    var restaurant: Restaurant,

    @ManyToMany
    @JsonManagedReference
    @JoinTable(
        name = "ingredient_in_food",
        joinColumns = [JoinColumn(name = "foodId")],
        inverseJoinColumns = [JoinColumn(name = "ingredientId")],
    )
    val ingredientsList: MutableList<Ingredient> = arrayListOf()
)