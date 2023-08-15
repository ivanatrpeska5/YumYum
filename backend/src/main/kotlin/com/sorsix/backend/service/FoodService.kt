package com.sorsix.backend.service

import com.sorsix.backend.model.Food
import com.sorsix.backend.model.dto.CategoryFoodsDTO
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import org.springframework.stereotype.Service

@Service
class FoodService(
    private val categoryRepository: CategoryRepository, private val foodRepository: FoodRepository
) {


    fun foodsByRestaurant(restaurantId: Long): MutableCollection<CategoryFoodsDTO> {
        val foodMap: MutableMap<String, CategoryFoodsDTO> = mutableMapOf();
        val foods = foodRepository.findFoodsByRestaurantId(restaurantId)
        for (food in foods) {
            println(food.ingredientsSet)
            for (c in food.categorySet) {
                println(c)
                foodMap.putIfAbsent(c.name, CategoryFoodsDTO(c.name, mutableListOf()))
                foodMap[c.name]?.food?.add(food);
            }
        }
        return foodMap.values;
    }

    fun newestFood(): List<Food> {
        return foodRepository.findTop5ByOrderByIdDesc()
    }
}