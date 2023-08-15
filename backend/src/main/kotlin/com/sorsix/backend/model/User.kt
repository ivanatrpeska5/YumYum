package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonIgnore
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
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) open var userId: Long? = null,
    @JsonIgnore
    open var name: String,
    @JsonIgnore
    open var surname: String,
    @JsonIgnore
    open var email: String,
    @JsonIgnore
    open var phone: String,
    @JsonIgnore
    private var password: String,
    @Column(unique = true)
    private var username: String,
    open var role: String
) : UserDetails {

    @JsonIgnore
    override fun getAuthorities(): MutableCollection<out GrantedAuthority> {
        return mutableListOf(SimpleGrantedAuthority("user"));
    }

    @JsonIgnore
    override fun getPassword(): String {
        return password;
    }


    override fun getUsername(): String {
        return username
    }

    @JsonIgnore
    override fun isAccountNonExpired(): Boolean {
        return true
    }

    override fun isAccountNonLocked(): Boolean {
        return true
    }

    @JsonIgnore
    override fun isCredentialsNonExpired(): Boolean {
        return true
    }

    @JsonIgnore
    override fun isEnabled(): Boolean {
        return true
    }
}

