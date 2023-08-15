package com.sorsix.backend.controller


import com.sorsix.backend.model.Order
import com.sorsix.backend.model.Payment
import com.sorsix.backend.model.dto.OrderDTO

import com.sorsix.backend.model.dto.OrderRequestDTO
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.service.OrderService
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.PutMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping("/api/order")
class OrderController(private val orderService: OrderService) {

    @PostMapping
    fun createOrder(@RequestBody request: OrderRequestDTO) {
        orderService.createOrder(request.orderFormData, request.paymentFormData)
    }

    @GetMapping("/restaurant/{sessionId}")
    fun getNewOrdersForRestaurant(@PathVariable sessionId: String) = orderService.getNewOrdersForRestaurant(sessionId)


    @GetMapping("/customer-orders/{sessionId}")
    fun getCustomerOrders(@PathVariable sessionId: String): ResponseEntity<MutableList<Order>> {
        return ResponseEntity.ok().body(orderService.getCustomerOrder(sessionId))
    }

    @PutMapping("/cancel/{orderId}")
    fun cancelOrder(@PathVariable orderId: Long): ResponseEntity<Any> {
        val order = orderService.changeOrderStatus(orderId, OrderStatus.Cancelled)
        return ResponseEntity.ok().body(mapOf("id" to orderId));
    }

    @PutMapping("/prepared/{orderId}")
    fun preparedOrder(@PathVariable orderId: Long): ResponseEntity<Any> {
        val order = orderService.changeOrderStatus(orderId, OrderStatus.Prepared)
        return ResponseEntity.ok().body(mapOf("id" to orderId));
    }

    @GetMapping("/prepared")
    fun getPreparedOrders(): ResponseEntity<List<Order>> {
        return ResponseEntity.ok().body(orderService.getPreparedOrders())
    }

    @PutMapping("/accept/{sessionId}/{orderId}")
    fun acceptOrder(@PathVariable sessionId: String, @PathVariable orderId: Long): ResponseEntity<Map<String, Long>> {
        orderService.acceptOrder(sessionId, orderId);
        return ResponseEntity.ok().body(mapOf("id" to orderId));
    }

    @GetMapping("/accepted/{sessionId}")
    fun getAcceptedOrders(@PathVariable sessionId: String): ResponseEntity<List<Order>> {
        return ResponseEntity.ok().body(orderService.getInDeliveryOrders(sessionId))
    }

    @PutMapping("/deliver/{orderId}")
    fun deliverOrder(@PathVariable orderId: Long): ResponseEntity<Any> {
        val order = orderService.changeOrderStatus(orderId, OrderStatus.Delivered)
        return ResponseEntity.ok().body(mapOf("id" to orderId));
    }


    @GetMapping("/delivered/{sessionId}")
    fun getDeliveredOrders(@PathVariable sessionId: String): ResponseEntity<List<Order>> {
        return ResponseEntity.ok().body(orderService.getDeliveredOrders(sessionId))
    }

}