package com.sorsix.backend.model

import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    open val id: Long,

    open val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated
    open var status:OrderStatus,

    @ManyToOne
    open var location: Location,

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

