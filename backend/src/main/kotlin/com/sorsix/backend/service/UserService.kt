package com.sorsix.backend.service

import com.sorsix.backend.model.Customer
import com.sorsix.backend.model.DeliveryMan
import com.sorsix.backend.model.RestaurantEmployee
import com.sorsix.backend.model.User
import com.sorsix.backend.model.dto.RegisterDto
import com.sorsix.backend.repository.*
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Service

@Service
class UserService(private val userRepository: UserRepository, private val customerRepository: CustomerRepository, private val passwordEncoder: BCryptPasswordEncoder,
                  private val restaurantEmployeeRepository: RestaurantEmployeeRepository,
                  private val restaurantRepository: RestaurantRepository,
                  private val deliveryManRepository: DeliveryManRepository
) :UserDetailsService {
    override fun loadUserByUsername(username: String?): User {
        return userRepository.findUserByUsername(username)
    }

    fun register(registerDto: RegisterDto): User? {
        if (registerDto.role == "customer"){
           return customerRepository.save(Customer(userRepository.maxId()+1,
                registerDto.name,
                registerDto.surname,
                registerDto.email,
                registerDto.phone,
                passwordEncoder.encode(registerDto.password),
                registerDto.username,registerDto.role))
        } else if(registerDto.role=="employee"){
            println(registerDto.restaurantId)
           return restaurantEmployeeRepository.save(RestaurantEmployee(userRepository.maxId()+1,
                registerDto.name,
                registerDto.surname,
                registerDto.email,
                registerDto.phone,
                passwordEncoder.encode(registerDto.password),
                restaurantRepository.findById(registerDto.restaurantId!!).get(),registerDto.username,registerDto.role))
        } else if(registerDto.role=="delivery"){
           return deliveryManRepository.save(DeliveryMan(userRepository.maxId()+1,
                registerDto.name,
                registerDto.surname,
                registerDto.email,
                registerDto.phone,
                passwordEncoder.encode(registerDto.password),
                registerDto.username,registerDto.role))
        }
        return null;
    }
}