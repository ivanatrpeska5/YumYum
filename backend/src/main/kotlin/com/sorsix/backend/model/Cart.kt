package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    open var id: Long? = null

    open var ammount:Double? = null

    @ManyToOne
    open var customer:Customer?=null

}