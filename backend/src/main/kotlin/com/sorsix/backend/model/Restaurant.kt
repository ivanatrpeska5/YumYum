package com.sorsix.backend.model

import javax.persistence.*

@Entity
class Restaurant(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var name:String,

    @ManyToOne
    var location: Location,

    var photo:String

) {

}