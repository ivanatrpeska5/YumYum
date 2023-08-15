package com.sorsix.backend.service

import com.sorsix.backend.model.Rating
import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.model.dto.RatingDTO
import com.sorsix.backend.repository.CustomerRepository
import com.sorsix.backend.repository.RatingRepository
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.stereotype.Service


@Service
class RestaurantService(
    private val restaurantRepository: RestaurantRepository,
    private val ratingRepository: RatingRepository,
    private val sessionRegistry: InMemorySessionRegistry,
    private val customerRepository: CustomerRepository
) {

    fun findAll(): MutableList<Restaurant> {
        return restaurantRepository.findAll()
    }

    fun findById(id: Long): Restaurant {
        return restaurantRepository.findById(id).get();
    }

    fun rateRestaurant(restaurantId: Long, ratingDTO: RatingDTO, sessionId: String): Restaurant? {
        val username: String = sessionRegistry.getUsernameForSession(sessionId)!!
        val customer = customerRepository.findCustomerByUsername(username)
        val restaurant = restaurantRepository.findById(restaurantId).get()
        ratingRepository.save(Rating(rating = ratingDTO.rating, restaurant = restaurant, customer = customer))
        val ratings = ratingRepository.findByRestaurantId(restaurantId)
        restaurant.averageRating = ratings.sumOf { it.rating } / ratings.size.toDouble()
        return restaurantRepository.save(restaurant)
    }


}