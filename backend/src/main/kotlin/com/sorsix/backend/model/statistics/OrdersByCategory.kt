package com.sorsix.backend.model.statistics

import org.hibernate.annotations.Immutable
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.Table

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