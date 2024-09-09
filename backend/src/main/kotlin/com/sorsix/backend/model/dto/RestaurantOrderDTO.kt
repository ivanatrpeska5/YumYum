package com.sorsix.backend.model.dto

import com.sorsix.backend.model.*
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.model.enumeration.PaymentMethod
import java.time.LocalDate

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