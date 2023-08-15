package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonManagedReference
import javax.persistence.*

@Entity
class Restaurant(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var name: String,

    @ManyToOne
    var location: Location,

    var logo: String,
    var photo: String,

    @OneToMany(cascade = [CascadeType.ALL], fetch = FetchType.LAZY, mappedBy = "restaurant")
    val workingHours: List<WorkingHours> = mutableListOf(),

    @OneToMany(cascade = [CascadeType.ALL], fetch = FetchType.LAZY, mappedBy = "restaurant")
    @JsonManagedReference
    var ratings: List<Rating> = mutableListOf(),

    @Column(nullable = false)
    var averageRating: Double = 0.0,

    var deliveryTime: String,
    ) {

}