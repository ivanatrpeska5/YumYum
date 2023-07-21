package com.sorsix.backend.model.manytomany

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Food
import javax.persistence.*


@Entity
class CartConsistsOfFood(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,

    @ManyToOne
    var cart: Cart,

    @ManyToOne
    var food: Food,

    var quantity:Int
) {

}