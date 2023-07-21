package com.sorsix.backend.model

import lombok.Data
import javax.persistence.*


@Entity
@Data
class Cart(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var ammount:Double,
    @ManyToOne var customer:Customer
)

