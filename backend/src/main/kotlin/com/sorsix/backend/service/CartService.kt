package com.sorsix.backend.service

import com.sorsix.backend.model.Food
import com.sorsix.backend.repository.CartRepository
import org.springframework.stereotype.Service


@Service
class CartService(private val cartRepository: CartRepository) {
    fun addProductToCart(food: Food, ){

    }
}