package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Food(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var photo:String,
    var name:String,
    var price:Double,

//    @ManyToOne
//    var restaurant: Restaurant
)