package com.sorsix.backend.config

import com.sorsix.backend.model.Customer
import com.sorsix.backend.model.Location
import com.sorsix.backend.model.Restaurant
import com.sorsix.backend.model.User
import com.sorsix.backend.repository.LocationRepository
import com.sorsix.backend.repository.RestaurantRepository
import com.sorsix.backend.repository.UserRepository
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Component
import javax.annotation.PostConstruct


@Component
class DataInitializer(
    private val userRepository: UserRepository,
    private val passwordEncoder: BCryptPasswordEncoder, private val restaurantRepository: RestaurantRepository, private val locationRepository: LocationRepository
) {

    @PostConstruct
    fun init(){
        userRepository.save(Customer(1,"a","a","a","a",passwordEncoder.encode("a"),"a"))
        restaurantRepository.save(Restaurant(1,"Doma", locationRepository.getReferenceById(1),"photo"))
    }
}