package com.sorsix.backend.service

import com.sorsix.backend.model.User
import com.sorsix.backend.repository.UserRepository
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.stereotype.Service

@Service
class UserService(private val userRepository: UserRepository) :UserDetailsService {
    override fun loadUserByUsername(username: String?): User {
        return userRepository.findUserByUsername(username)
    }
}