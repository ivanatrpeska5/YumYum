package com.sorsix.backend.service

import com.sorsix.backend.model.Rating
import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.repository.RestaurantRepository
import org.springframework.stereotype.Service
import org.springframework.web.bind.annotation.GetMapping


@Service
class RestaurantService(
    private val restaurantRepository: RestaurantRepository
) {

    fun findAll(): MutableList<Restaurant> {
        return restaurantRepository.findAll()
    }

    fun findById(id:Long): Restaurant{
        return restaurantRepository.findById(id).get();
    }

    fun addRating(restaurantId: Long, ratingValue: Double) {
        val restaurant = restaurantRepository.findById(restaurantId)
            .orElseThrow { IllegalArgumentException("Restaurant not found with ID: $restaurantId") }

        val newRating = Rating(rating = ratingValue, restaurant = restaurant)
        restaurant.ratings += newRating

        val totalRatings = restaurant.ratings.size
        val totalRatingSum = restaurant.ratings.sumOf { it.rating }
        restaurant.averageRating = totalRatingSum / totalRatings.toDouble()

        restaurantRepository.save(restaurant)
    }


}