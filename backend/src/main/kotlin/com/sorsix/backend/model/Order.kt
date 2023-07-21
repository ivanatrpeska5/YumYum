package com.sorsix.backend.model

import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,

    val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated
    var status:OrderStatus,

    @ManyToOne
    var location: Location,

    @ManyToOne
    var customer:Customer,

    @ManyToOne
    var deliveryMan: DeliveryMan,

    @OneToOne
    var cart: Cart

//    @ManyToOne
//    var restaurant:Restaurant

//    @OneToOne
//    var payment:Payment
    )

