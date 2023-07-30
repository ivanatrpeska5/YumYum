package com.sorsix.backend.service

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.dto.AddFoodToCartDto
import com.sorsix.backend.model.dto.CartInfoDTO
import com.sorsix.backend.model.manytomany.CartConsistsOfFood
import com.sorsix.backend.repository.*
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.stereotype.Service


@Service
class CartService(
    private val cartRepository: CartRepository,
    private val foodRepository: FoodRepository,
    private val sessionRegistry: InMemorySessionRegistry,
    private val customerRepository: CustomerRepository,
    private val cartConsistsOfFoodRepository: CartConsistsOfFoodRepository,
    private val restaurantRepository: RestaurantRepository,
) {

    fun addFoodToCart(dto: AddFoodToCartDto) {
        val food: Food = foodRepository.findFoodById(dto.foodId)
        val username = sessionRegistry.getUsernameForSession(dto.sessionId);
        val customer = customerRepository.findCustomerByUsername(username!!);
        var cart = cartRepository.findCartByRestaurantIdAndCustomerUserId(food.restaurant.id, customer.userId);
        if (cart == null) {
            cart = cartRepository.save(Cart(cartRepository.count() + 1, customer, restaurant = food.restaurant))
        }
        cartConsistsOfFoodRepository.save(
            CartConsistsOfFood(
                cartConsistsOfFoodRepository.count() + 1, cart, food, dto.quantity
            )
        )
    }

    fun getCarts(sessionId: String): Set<Cart> {
        val username = sessionRegistry.getUsernameForSession(sessionId);
        val customer = customerRepository.findCustomerByUsername(username!!);
        val carts = cartRepository.findAllByCustomer(customer);
        return carts;
    }

    fun getCartsInfoForUser(sessionId: String): List<CartInfoDTO>? {
        val username = sessionRegistry.getUsernameForSession(sessionId);
        val customer = customerRepository.findCustomerByUsername(username!!);
        val carts = cartRepository.findAllByCustomerUserId(customer.userId);
        val foodsInCart: MutableList<CartConsistsOfFood> = mutableListOf()
        for (cart in carts) {
            foodsInCart.addAll(cartConsistsOfFoodRepository.findAllByCart(cart))
        }
        return foodsInCart.map {
            CartInfoDTO(
                it.id,
                it.cart.id,
                it.food.id,
                it.food.photo,
                it.food.name,
                it.food.price,
                it.quantity,
                it.cart.restaurant.id,
                it.cart.restaurant.name
            )
        }

    }


}
