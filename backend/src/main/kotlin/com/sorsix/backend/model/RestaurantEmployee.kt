package com.sorsix.backend.model

import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import javax.persistence.Entity
import javax.persistence.ManyToOne
import javax.persistence.PrimaryKeyJoinColumn

@Entity
@PrimaryKeyJoinColumn(name = "userId")
class RestaurantEmployee
    (
    userId: Long? = null, name: String, surname: String, email: String, phone: String, password: String,
    @ManyToOne
    var restaurant: Restaurant, username: String, role: String
) :
    User(userId, name, surname, email, phone, password, username, role) {
    override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
        return mutableListOf(SimpleGrantedAuthority("employee"))
    }
}