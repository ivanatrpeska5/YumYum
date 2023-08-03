package com.sorsix.backend.controller


import com.sorsix.backend.model.Order
import com.sorsix.backend.model.Payment
import com.sorsix.backend.model.dto.OrderDTO

import com.sorsix.backend.model.dto.OrderRequestDTO
import com.sorsix.backend.service.OrderService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping("/api/order")
class OrderController(private val orderService: OrderService) {

    @PostMapping
    fun createOrder(@RequestBody request: OrderRequestDTO) {
        println(request.paymentFormData?.cardHolderName)
        orderService.createOrder(request.orderFormData, request.paymentFormData)
    }

    @GetMapping("/restaurant/{sessionId}")
    fun getNewOrdersForRestaurant(@PathVariable sessionId: String) = orderService.getNewOrdersForRestaurant(sessionId)


}