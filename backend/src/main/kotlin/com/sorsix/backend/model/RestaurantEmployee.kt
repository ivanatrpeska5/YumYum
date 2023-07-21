package com.sorsix.backend.model

import javax.persistence.Entity

@Entity
class RestaurantEmployee(userId: Long, name: String, surname: String, email: String, phone: String, password: String) :
    User(userId, name, surname, email, phone, password)