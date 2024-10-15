package com.sorsix.backend.model.statistics

import org.hibernate.annotations.Immutable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import org.springframework.stereotype.Service
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.time.LocalDate
import java.time.format.DateTimeFormatter
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

@Entity
@Table(name = "v_orders_by_restaurant")
@Immutable
class OrdersByRestaurant(
    @Id
    @Column(name = "restaurant_id")
    val restaurantId: Long,

    @Column(name = "restaurant_name")
    val restaurantName: String,

    @Column(name = "number_of_orders")
    val numberOfOrders: Int
) {

}

fun OrdersByRestaurant.toJson() = mapOf(
    "name" to restaurantName,
    "value" to numberOfOrders
)
@Entity
@Table(name = "v_orders_by_category")
@Immutable
class OrdersByCategory(
    @Id
    @Column(name = "category_id")
    val categoryId: Long,

    @Column(name = "category_name")
    val categoryName: String,

    @Column(name = "number_of_orders")
    val numberOfOrders: Int
) {
}

fun OrdersByCategory.toJson() = mapOf(
    "name" to categoryName,
    "value" to numberOfOrders
)
@Entity
@Table(name = "v_orders_over_time_by_restaurant")
@Immutable
class OrdersOverTimeByRestaurant(
    @Id
    @Column(name = "id")
    val id: Long,

    @Column(name = "order_date")
    val orderDate: LocalDate,

    @Column(name = "restaurant_name")
    val restaurantName: String,

    @Column(name = "number_of_orders")
    val numberOfOrders: Int
) {
}

@Repository
interface OrderByRestaurantRepository : JpaRepository<OrdersByRestaurant, Long> {}

@Repository
interface OrderByCategoryRepository : JpaRepository<OrdersByCategory, Long> {}

@Repository
interface OrdersOverTimeByRestaurantRepository : JpaRepository<OrdersOverTimeByRestaurant, Long> {}


@Service
class StatisticsService(
    private val orderByRestaurantRepository: OrderByRestaurantRepository,
    private val orderByCategoryRepository: OrderByCategoryRepository,
    private val ordersOverTimeByRestaurantRepository: OrdersOverTimeByRestaurantRepository
) {
    fun getOrdersByRestaurant() = orderByRestaurantRepository.findAll()
    fun getOrdersByCategory() = orderByCategoryRepository.findAll()
    fun getOrdersOverTimeByRestaurant() = ordersOverTimeByRestaurantRepository.findAll()
}

data class OrderSeries(
    val value: Int,
    val name: String
)

data class RestaurantOrdersJson(
    val name: String,
    val series: List<OrderSeries>
)


@Service
class StatisticsMapper(
    private val service: StatisticsService
) {
    fun getOrdersByRestaurant() = service.getOrdersByRestaurant().map { it.toJson() }
    fun getOrdersByCategory() = service.getOrdersByCategory().map { it.toJson() }
    fun getOrdersOverTimeByRestaurant() =
        service.getOrdersOverTimeByRestaurant().groupBy { it.restaurantName }.map { (restaurantName, orderList) ->
            val series = orderList.map {
                OrderSeries(
                    value = it.numberOfOrders,
                    name = it.orderDate.format(DateTimeFormatter.ISO_DATE)
                )
            }

            RestaurantOrdersJson(
                name = restaurantName,
                series = series
            )
        }
}

@RestController
@RequestMapping("/api/statistics")
class StatisticsController(private val mapper: StatisticsMapper) {
    @GetMapping("/orders-by-restaurant")
    fun getOrdersByRestaurant() = mapper.getOrdersByRestaurant()

    @GetMapping("/orders-by-category")
    fun getOrdersByCategory() = mapper.getOrdersByCategory()

    @GetMapping("/orders-over-time-by-restaurant")
    fun getOrdersOverTimeByRestaurant() = mapper.getOrdersOverTimeByRestaurant()

}
