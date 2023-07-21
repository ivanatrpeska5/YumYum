package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Cart(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private var id: Long,

    private var ammount:Double,

    @ManyToOne
    var customer:Customer) {

}