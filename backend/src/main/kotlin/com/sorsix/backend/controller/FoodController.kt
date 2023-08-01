package com.sorsix.backend.controller

import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Ingredient
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import com.sorsix.backend.repository.IngredientRepository
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class FoodController(private val categoryRepository: CategoryRepository,
                     private val ingredientRepository: IngredientRepository, private val foodRepository: FoodRepository
) {

    @GetMapping("/categories")
    fun getCategories(): ResponseEntity<MutableList<Category>> {
        return ResponseEntity.ok().body(categoryRepository.findAll());
    }


    @GetMapping("/ingredients")
    fun getIngredients(): ResponseEntity<MutableList<Ingredient>> {
        return ResponseEntity.ok().body(ingredientRepository.findAll());
    }

    @PostMapping("food/add")
    fun postFood(@RequestBody food: Food){
        foodRepository.save(food)
    }
}