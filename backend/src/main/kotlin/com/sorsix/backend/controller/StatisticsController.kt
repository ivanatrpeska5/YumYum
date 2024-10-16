package com.sorsix.backend.controller

import com.sorsix.backend.service.StatisticsService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping("/api/statistics")
class StatisticsController(private val service: StatisticsService) {
    @GetMapping("/orders-by-restaurant")
    fun getOrdersByRestaurant() = service.getOrdersByRestaurant()

    @GetMapping("/orders-by-category")
    fun getOrdersByCategory() = service.getOrdersByCategory()

    @GetMapping("/orders-over-time-by-restaurant")
    fun getOrdersOverTimeByRestaurant() = service.getOrdersOverTimeByRestaurant()

    @GetMapping("/revenue-by-restaurant")
    fun getRevenueByRestaurant() = service.getRevenueByRestaurant()

}
