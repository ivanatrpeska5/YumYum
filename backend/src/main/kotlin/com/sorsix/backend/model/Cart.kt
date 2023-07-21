package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Cart(@Id
           @GeneratedValue(strategy = GenerationType.IDENTITY)
           @Column(name = "id", nullable = false)
           private var id: Long? = null,

           private var ammount:Double? = null,

    @ManyToOne
    var customer:Customer?=null,) {

}