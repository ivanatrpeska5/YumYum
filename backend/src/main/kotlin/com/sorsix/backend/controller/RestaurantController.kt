package com.sorsix.backend.controller

import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.model.dto.CategoryFoodsDTO
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.service.FoodService
import com.sorsix.backend.service.RestaurantService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class RestaurantController(private val restaurantService: RestaurantService,
                            private val foodService: FoodService){

    @GetMapping("/restaurants")
    fun restaurants(): ResponseEntity<MutableList<Restaurant>> {
        return ResponseEntity.ok().body(restaurantService.findAll());
    }

    @GetMapping("restaurants/{id}")
    fun restaurant(@PathVariable id: Long): ResponseEntity<Restaurant>{
        println(id)
        return ResponseEntity.ok().body(restaurantService.findById(id));
    }

    @GetMapping("/restaurants/foods/{id}")
    fun foodsInRestaurants(@PathVariable id: Long): ResponseEntity<MutableCollection<CategoryFoodsDTO>> {
        return ResponseEntity.ok().body(foodService.foodsByRestaurant(id))
    }
}