package com.sorsix.backend.model

import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import lombok.Data
import javax.persistence.*


@Entity
@Data
class Cart(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id: Long,
    /*var ammount:Double,*/
    @ManyToOne var customer:Customer,
    @ManyToOne var restaurant: Restaurant,

    @OneToMany
    @JoinColumn(name="cart_id")
    val cartConsistsOfFoodList: MutableList<CartConsistsOfFood> = mutableListOf<CartConsistsOfFood>()
){
    fun getAmmountPrice(): Double {
        return cartConsistsOfFoodList.map { it.food.price }.sum();
    }
}
