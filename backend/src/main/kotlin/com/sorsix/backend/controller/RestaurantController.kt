package com.sorsix.backend.controller

import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.model.dto.CategoryFoodsDTO
import com.sorsix.backend.model.dto.RatingDTO
import com.sorsix.backend.repository.RestaurantEmployeeRepository
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.service.FoodService
import com.sorsix.backend.service.RestaurantService
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*


@RestController
@RequestMapping("/api")
class RestaurantController(
    private val restaurantService: RestaurantService,
    private val foodService: FoodService,
    private val sessionRegistry: InMemorySessionRegistry,
    private val restaurantEmployeeRepository: RestaurantEmployeeRepository,
    private val restaurantRepository: RestaurantRepository
) {

    @GetMapping("/restaurants")
    fun restaurants(): ResponseEntity<MutableList<Restaurant>> {
        return ResponseEntity.ok().body(restaurantService.findAll());
    }

    @GetMapping("restaurants/{id}")
    fun restaurant(@PathVariable id: Long): ResponseEntity<Restaurant> {
        println(id)
        return ResponseEntity.ok().body(restaurantService.findById(id));
    }

    @GetMapping("/restaurants/foods/{id}")
    fun foodsInRestaurants(@PathVariable id: Long): ResponseEntity<MutableCollection<CategoryFoodsDTO>> {
        return ResponseEntity.ok().body(foodService.foodsByRestaurant(id))
    }

    @GetMapping("/restaurant/{sessionId}")
    fun getRestaurantByEmployee(@PathVariable sessionId: String): ResponseEntity<Restaurant> {
        val username = sessionRegistry.getUsernameForSession(sessionId)
        val employee = restaurantEmployeeRepository.findByUsername(username!!);
        if (employee != null) {
            println(employee.name)
            return ResponseEntity.ok().body(employee.restaurant)
        }
        return ResponseEntity.notFound().build();
    }

    @GetMapping("/restaurants/search")
    fun searchRestaurants(@RequestParam(name = "q") query: String?): List<Restaurant?>? {
        return query?.let { restaurantRepository.findByNameContainingIgnoreCase(it) }
    }

    @PostMapping("/restaurant/{restaurantId}/rate/{sessionId}")
    fun rateRestaurant(
        @PathVariable restaurantId: Long,
        @PathVariable sessionId: String,
        @RequestBody ratingDTO: RatingDTO
    ): ResponseEntity<Restaurant> {
        return ResponseEntity.ok().body(restaurantService.rateRestaurant(restaurantId, ratingDTO, sessionId))
    }

    @GetMapping("/topRestaurants")
    fun getTopRestaurants(): List<Restaurant> {
        return restaurantRepository.findTop5ByOrderByAverageRatingDesc()
    }

}