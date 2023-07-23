package com.sorsix.backend.model

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import javax.persistence.Entity
import javax.persistence.PrimaryKeyJoinColumn


@Entity
@PrimaryKeyJoinColumn(name = "userId")
class DeliveryMan(userId: Long, name: String, surname: String, email: String, phone: String, password: String,
                  username: String
) :
    User(userId, name, surname, email, phone, password, username
    ){
    override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
        return mutableListOf(SimpleGrantedAuthority("delivery"));
    }
    }