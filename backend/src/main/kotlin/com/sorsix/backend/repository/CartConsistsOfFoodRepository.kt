package com.sorsix.backend.repository;

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface CartConsistsOfFoodRepository : JpaRepository<CartConsistsOfFood, Long> {
    fun findAllByCart(cart: Cart) : List<CartConsistsOfFood>

    @Query("select max(c.id) from CartConsistsOfFood c")
    fun maxId():Long
}