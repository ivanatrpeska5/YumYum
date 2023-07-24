package com.sorsix.backend.controller

import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.service.RestaurantService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class RestaurantController(private val restaurantService: RestaurantService){

    @GetMapping("/restaurants")
    fun restaurants(): ResponseEntity<MutableList<Restaurant>> {
        return ResponseEntity.ok().body(restaurantService.findAll());
    }

    @GetMapping("restaurants/{id}")
    fun restaurant(@PathVariable id: Long): ResponseEntity<Restaurant>{
        println(id)
        return ResponseEntity.ok().body(restaurantService.findById(id));
    }
}