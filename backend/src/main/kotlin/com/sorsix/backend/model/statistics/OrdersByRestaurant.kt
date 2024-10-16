package com.sorsix.backend.model.statistics

import org.hibernate.annotations.Immutable
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