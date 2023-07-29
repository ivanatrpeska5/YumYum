package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import org.springframework.data.jpa.repository.JpaRepository

interface CartConsistsOfFoodRepository : JpaRepository<CartConsistsOfFood, Long> {
    fun findAllByCart(cart: Cart) : List<CartConsistsOfFood>
}