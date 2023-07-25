package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonBackReference
import javax.persistence.*

@Entity
class Category(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    var name: String,
    var photo: String,
    @ManyToMany(mappedBy = "categorySet")
    @JsonBackReference
    val foodList: MutableList<Food> = arrayListOf()
)