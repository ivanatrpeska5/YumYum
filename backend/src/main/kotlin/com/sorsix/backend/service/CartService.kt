package com.sorsix.backend.service

import com.sorsix.backend.model.Food
import com.sorsix.backend.repository.CartRepository
import com.sorsix.backend.repository.FoodRepository
import org.springframework.stereotype.Service


@Service
class CartService(
    private val cartRepository: CartRepository,
    private val foodRepository: FoodRepository
) {
    fun addFoodToCart(foodId:Long, quantity: Int, userId: Long){
        val food: Food = foodRepository.findFoodById(foodId)
        if(food!=null) {

        }

    }
}