package com.sorsix.backend.controller

import com.sorsix.backend.model.dto.OrderRequestDTO
import com.sorsix.backend.service.OrderService
import org.springframework.web.bind.annotation.*
import org.springframework.web.bind.annotation.GetMapping as GetMapping


@RestController
@RequestMapping("/api/order")
class OrderController(private val orderService: OrderService) {

    @PostMapping
    fun createOrder(@RequestBody request: OrderRequestDTO){
        orderService.createOrder(request.orderFormData, request.paymentFormData)
    }

    @GetMapping("/restaurant/{sessionId}")
    fun getNewOrdersForRestaurant(@PathVariable sessionId:String) = orderService.getNewOrdersForRestaurant(sessionId)
}