package com.sorsix.backend.service

import com.sorsix.backend.model.Food
import com.sorsix.backend.model.dto.CategoryFoodsDTO
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.repository.CategoryRepository
import com.sorsix.backend.repository.FoodRepository
import com.sorsix.backend.repository.OrderRepository
import org.springframework.stereotype.Service

@Service
class FoodService(
    private val categoryRepository: CategoryRepository,
    private val foodRepository: FoodRepository,
    private val orderRepository: OrderRepository
) {


    fun foodsByRestaurant(restaurantId: Long): MutableCollection<CategoryFoodsDTO> {
        val foodMap: MutableMap<String, CategoryFoodsDTO> = mutableMapOf()
        val foods = foodRepository.findFoodsByRestaurantId(restaurantId)

        for (food in foods) {
            println(food.ingredientsSet)
            for (c in food.categorySet) {
                println(c)
                foodMap.putIfAbsent(c.name, CategoryFoodsDTO(c.name, mutableListOf()))
                foodMap[c.name]?.food?.add(food);
            }
        }
        return foodMap.values;
    }

    fun newestFood(): List<Food> {
        return foodRepository.findTop5ByOrderByIdDesc()
    }

    fun getMostOrderedFood(): List<Food> {
        val foodAndNumberOfOrders: MutableMap<Food, Int> = mutableMapOf()
        val orders = orderRepository.findAllByStatusIn(
            mutableListOf(
            OrderStatus.Delivered,
            OrderStatus.InDelivery,
            OrderStatus.Prepared,
        )
        )
        for (order in orders) {
            val cart = order.cart
            val foodsInCart = cart.cartConsistsOfFoodList.map { it.food }
            for (food in foodsInCart) {
                foodAndNumberOfOrders.putIfAbsent(food, 0)
                foodAndNumberOfOrders[food] = foodAndNumberOfOrders[food]!! + 1
            }
        }
        return foodAndNumberOfOrders.toList().sortedByDescending { (_, value) -> value }.take(5).map { it.first }
    }
}