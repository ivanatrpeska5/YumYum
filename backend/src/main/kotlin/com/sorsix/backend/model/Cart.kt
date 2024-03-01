package com.sorsix.backend.model

import com.fasterxml.jackson.annotation.JsonManagedReference
import com.sorsix.backend.model.enumeration.ShoppingCartStatus
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import lombok.Data
import javax.persistence.*


@Entity
@Data
class Cart(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long? = null,
    @ManyToOne var customer: Customer,
    @ManyToOne var restaurant: Restaurant,
    @Enumerated(EnumType.STRING)
    var status: ShoppingCartStatus,

    @OneToMany
    @JoinColumn(name = "cart_id")
    @JsonManagedReference
    val cartConsistsOfFoodList: MutableList<CartConsistsOfFood> = mutableListOf()
) {
    fun getAmmountPrice(): Double {
        return cartConsistsOfFoodList.map { it.food.price * it.quantity }.sum()
    }
}
