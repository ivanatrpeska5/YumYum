package com.sorsix.backend.model

import org.springframework.security.core.GrantedAuthority
import javax.persistence.Entity


@Entity
class Customer(userId: Long, name: String, surname: String, email: String, phone: String, password: String) :
    User(userId, name, surname, email, phone, password)