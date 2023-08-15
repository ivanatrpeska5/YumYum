package com.sorsix.backend.model.dto

import com.sorsix.backend.model.*
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.model.enumeration.PaymentMethod
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import java.time.LocalDate
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.ManyToOne
import javax.persistence.OneToOne

data class RestaurantOrderDTO(
    val id: Long? = null,
    val dateCreated: LocalDate,
    var status: OrderStatus,
    var location: Location,
    var customerId: Long,
    var customerName: String,
    var customerSurname: String,
    var customerUsername: String,
    var paymentMethod: PaymentMethod,
    var cartId: Long? = null,
    var foodQuantity: List<FoodNameQuantityDTO>

)