package com.sorsix.backend.model.manytomany

import com.fasterxml.jackson.annotation.JsonBackReference
import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Food
import javax.persistence.*


@Entity
@Table(name = "cart_consists_of_food")
class CartConsistsOfFood(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long?=null,

    @ManyToOne
    @JoinColumn(name="cart_id")
    @JsonBackReference
    var cart: Cart,

    @ManyToOne
    @JoinColumn(name="food_id")
    var food: Food,

    var quantity: Long
) {

}