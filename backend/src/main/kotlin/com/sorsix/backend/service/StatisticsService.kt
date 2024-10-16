package com.sorsix.backend.service

import com.sorsix.backend.model.dto.OrderSeriesDTO
import com.sorsix.backend.model.dto.RestaurantOrdersDTO
import com.sorsix.backend.model.statistics.toJson
import com.sorsix.backend.repository.OrderByCategoryRepository
import com.sorsix.backend.repository.OrderByRestaurantRepository
import com.sorsix.backend.repository.OrdersOverTimeByRestaurantRepository
import com.sorsix.backend.repository.RevenueByRestaurantRepository
import org.springframework.stereotype.Service
import java.time.format.DateTimeFormatter


@Service
class StatisticsService(
    private val orderByRestaurantRepository: OrderByRestaurantRepository,
    private val orderByCategoryRepository: OrderByCategoryRepository,
    private val ordersOverTimeByRestaurantRepository: OrdersOverTimeByRestaurantRepository,
    private val revenueByRestaurantRepository: RevenueByRestaurantRepository
) {
    fun getOrdersByRestaurant() = orderByRestaurantRepository.findAll().map { it.toJson() }
    fun getOrdersByCategory() = orderByCategoryRepository.findAll().map { it.toJson() }
    fun getOrdersOverTimeByRestaurant() = ordersOverTimeByRestaurantRepository.findAll().groupBy { it.restaurantName }
        .map { (restaurantName, orderList) ->
            val series = orderList.map {
                OrderSeriesDTO(
                    value = it.numberOfOrders,
                    name = it.orderDate.format(DateTimeFormatter.ISO_DATE)
                )
            }

            RestaurantOrdersDTO(
                name = restaurantName,
                series = series
            )
        }
    fun getRevenueByRestaurant() = revenueByRestaurantRepository.findAll().map { it.toJson() }
}