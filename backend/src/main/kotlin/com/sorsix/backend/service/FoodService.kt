package com.sorsix.backend.service

import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import org.springframework.stereotype.Service

@Service
class FoodService(
    private val categoryRepository: CategoryRepository, private val foodRepository: FoodRepository
) {


    fun foodsByRestaurant(restaurantId:Long): Map<String, MutableList<Food>> {
        val foodMap:MutableMap<String,MutableList<Food>> = mutableMapOf();
        val foods=foodRepository.findFoodsByRestaurantId(restaurantId);
        for (food in foods){
            for (c in food.categorySet){
                foodMap[c.name]?.add(food)
            }
        }
        return foodMap;
    }
}