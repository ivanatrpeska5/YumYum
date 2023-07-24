package com.sorsix.backend.service

import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.repository.RestaurantRepository
import org.springframework.stereotype.Service


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

}