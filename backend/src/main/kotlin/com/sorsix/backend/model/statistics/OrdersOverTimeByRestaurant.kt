package com.sorsix.backend.model.statistics


import org.hibernate.annotations.Immutable
import java.time.LocalDate
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

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