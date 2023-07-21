package com.sorsix.backend.model.manytomany

import com.sorsix.backend.model.Category
import com.sorsix.backend.model.Food
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.ManyToOne


@Entity
class FoodBelongsToCategory(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,

    @ManyToOne
    var food: Food,

    @ManyToOne
    var category: Category


) {
}