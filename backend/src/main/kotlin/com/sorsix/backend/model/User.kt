package com.sorsix.backend.model

import lombok.Data
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import javax.persistence.*


@Entity
@Data
abstract class User(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) open var userId: Long,
    open var name:String,
    open var surname:String,
    open var email:String,
    open var phone:String,
    private var password:String,
): UserDetails{

        override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
            TODO("Not yet implemented")
        }

        override fun getPassword(): String {
            TODO("Not yet implemented")
        }

        override fun getUsername(): String {
            TODO("Not yet implemented")
        }

        override fun isAccountNonExpired(): Boolean {
            TODO("Not yet implemented")
        }

        override fun isAccountNonLocked(): Boolean {
            TODO("Not yet implemented")
        }

        override fun isCredentialsNonExpired(): Boolean {
            TODO("Not yet implemented")
        }

        override fun isEnabled(): Boolean {
            TODO("Not yet implemented")
        }
}

