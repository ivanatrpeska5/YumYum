package com.sorsix.backend.model

import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.model.enumeration.PaymentMethod
import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
@Table(name = "orders")
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,

    val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated(value = EnumType.STRING)
    var status: OrderStatus,

    @ManyToOne
    var location: Location,

    @Enumerated(value = EnumType.STRING)
    var paymentMethod: PaymentMethod,

    @ManyToOne
    var customer: Customer,

    @ManyToOne
    var deliveryMan: DeliveryMan? = null,

    @OneToOne
    var cart: Cart,

    @OneToOne
    var payment: Payment? = null
)

