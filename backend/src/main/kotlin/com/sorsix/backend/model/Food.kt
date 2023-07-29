package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonManagedReference
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
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
    val ingredientsList: MutableList<Ingredient> = arrayListOf(),

    @ManyToMany
    @JsonManagedReference
    @JoinTable(
        name = "category_of_food",
        joinColumns = [JoinColumn(name = "foodId")],
        inverseJoinColumns = [JoinColumn(name = "categoryId")],
    )
    val categorySet: Set<Category>,

    @OneToMany
    @JoinColumn(name="cart_id")
    val cartConsistsOfFoodList: MutableList<CartConsistsOfFood> = mutableListOf<CartConsistsOfFood>()
)