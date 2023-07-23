package com.sorsix.backend.repository

import com.sorsix.backend.model.User
import org.springframework.data.jpa.repository.JpaRepository

interface UserRepository :JpaRepository<User,Long> {

    public fun findUserByUsername(username:String?):User
}

