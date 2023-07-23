package com.sorsix.backend.service

import com.sorsix.backend.repository.UserRepository
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService

class UserService(private val userRepository: UserRepository) :UserDetailsService {



    override fun loadUserByUsername(username: String?): UserDetails {
        return userRepository.findUserByUsername(username)
    }
}