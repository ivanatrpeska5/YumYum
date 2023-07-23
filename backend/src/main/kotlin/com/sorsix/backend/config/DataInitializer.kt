package com.sorsix.backend.config

import com.sorsix.backend.model.Customer
import com.sorsix.backend.model.User
import com.sorsix.backend.repository.UserRepository
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Component
import javax.annotation.PostConstruct


@Component
class DataInitializer(
    private val userRepository: UserRepository,
    private val passwordEncoder: BCryptPasswordEncoder) {

    @PostConstruct
    fun init(){
        userRepository.save(Customer(1,"a","a","a","a",passwordEncoder.encode("a"),"a"))
    }
}