package com.sorsix.backend.model

import lombok.Data
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import javax.persistence.*


@Entity
@Inheritance(strategy = InheritanceType.JOINED)
@Data
@Table(name = "users")
abstract class User(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) open var userId: Long,
    open var name:String,
    open var surname:String,
    open var email:String,
    open var phone:String,
    private var password:String,
    private var username:String
): UserDetails{

    override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
        return mutableListOf(SimpleGrantedAuthority("user"));
    }

    override fun getPassword(): String {
        return password;
    }

    override fun getUsername(): String {
        return username
    }

    override fun isAccountNonExpired(): Boolean {
        return true
    }

    override fun isAccountNonLocked(): Boolean {
        return true
    }

    override fun isCredentialsNonExpired(): Boolean {
        return true
    }

    override fun isEnabled(): Boolean {
        return true
    }
}

