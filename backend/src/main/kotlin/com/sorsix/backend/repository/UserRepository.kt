package com.sorsix.backend.repository

import com.sorsix.backend.model.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface UserRepository : JpaRepository<User, Long> {

    public fun findUserByUsername(username: String?): User

    @Query("select max(u.userId) from User u")
    fun maxId(): Long
}

