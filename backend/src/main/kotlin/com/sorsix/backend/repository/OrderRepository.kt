package com.sorsix.backend.repository;

import com.sorsix.backend.model.Customer
import com.sorsix.backend.model.DeliveryMan
import com.sorsix.backend.model.Order
import com.sorsix.backend.model.enumeration.OrderStatus
import org.springframework.data.jpa.repository.JpaRepository

interface OrderRepository : JpaRepository<Order, Long> {
    fun findAllByStatusAndCartRestaurantId(status: OrderStatus, restaurantId: Long) : List<Order>

    fun getOrdersByCustomer(customer: Customer):MutableList<Order>

    fun findAllByStatus(status: OrderStatus):List<Order>

    fun getOrdersByDeliveryManAndStatus(deliveryMan: DeliveryMan,status: OrderStatus):List<Order>

}