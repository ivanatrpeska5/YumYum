package com.sorsix.backend.model

import javax.persistence.Entity
import javax.persistence.ManyToOne

@Entity
class RestaurantEmployee
    (userId: Long, name: String, surname: String, email: String, phone: String, password: String,
        @ManyToOne
        var restaurant: Restaurant
     ) :
    User(userId, name, surname, email, phone, password)