package com.sorsix.backend.model

import com.sorsix.backend.model.enumeration.OrderStatus
import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
@Table(name="orders")
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,

    val dateCreated: LocalDate = LocalDate.now(),


    @Enumerated(value = EnumType.STRING)
    var status:OrderStatus,

    @ManyToOne
    var location: Location,

    @ManyToOne
    var customer:Customer,

    @ManyToOne
    var deliveryMan: DeliveryMan,

    @OneToOne
    var cart: Cart,

    @ManyToOne
    var restaurant:Restaurant,

    @OneToOne
    var payment:Payment
    )

