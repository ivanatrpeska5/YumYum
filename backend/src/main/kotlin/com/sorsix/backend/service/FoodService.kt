package com.sorsix.backend.service

import NewFoodDto
import com.sorsix.backend.model.Food
import com.sorsix.backend.model.Sale
import com.sorsix.backend.model.dto.CategoryFoodsDTO
import com.sorsix.backend.model.dto.FoodDTO
import com.sorsix.backend.model.enumeration.OrderStatus
import com.sorsix.backend.repository.*
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.scheduling.annotation.Scheduled
import org.springframework.stereotype.Service
import org.springframework.web.client.RestTemplate
import java.time.LocalDate

@Service
class FoodService(
    private val foodRepository: FoodRepository,
    private val orderRepository: OrderRepository,
    private val restaurantRepository: RestaurantRepository,
    private val saleRepository: SaleRepository,
    private val sessionRegistry: InMemorySessionRegistry,
    private val employeeRepository: RestaurantEmployeeRepository,
    private val customerRepository: CustomerRepository,
    private val restTemplate: RestTemplate
) {

    fun foodsByRestaurant(restaurantId: Long): MutableCollection<CategoryFoodsDTO> {
        val foodMap: MutableMap<String, CategoryFoodsDTO> = mutableMapOf()
        val foods = foodRepository.findFoodsByRestaurantId(restaurantId)
        for (food in foods) {
            val activeSalePercentage = saleRepository.findByFoodAndIsActiveTrue(food)?.percentage
            for (c in food.categorySet) {
                foodMap.putIfAbsent(c.name, CategoryFoodsDTO(c.name, mutableListOf()))
                foodMap[c.name]?.food?.add(food.toDto(activeSalePercentage))
            }
        }
        return foodMap.values
    }

    fun newestFood(): List<Food> {
        return foodRepository.findTop5ByOrderByIdDesc()
    }

    fun getOnSaleFood(): List<FoodDTO> {
        val activeSales = saleRepository.findAllByIsActiveTrue().sortedByDescending { it.percentage }
        return activeSales.map { it.food.toDto(it.percentage) }.take(5)
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

    fun updateFood(newFood: NewFoodDto) {
        val food = foodRepository.findFoodById(newFood.id!!)
        food.name = newFood.name
        food.photo = newFood.photo
        food.price = newFood.price
        food.restaurant = restaurantRepository.findById(newFood.restaurantId!!).get()
        food.categorySet = newFood.categorySet
        food.ingredientsSet = newFood.ingredientsSet
        foodRepository.save(food)
    }

    fun Food.toDto(salePercentage: Int? = null) = FoodDTO(
        id = this.id,
        photo = this.photo,
        name = this.name,
        price = this.price,
        priceWithDiscount = getPriceWithDiscountApplied(this.price, salePercentage),
        restaurant = this.restaurant,
        ingredientsSet = this.ingredientsSet,
        categorySet = this.categorySet,
    )

    private fun getPriceWithDiscountApplied(price: Double, salePercentage: Int? = null): Double? {
        if (salePercentage == null) return null
        val priceWithDiscountApplied = price * (1 - salePercentage / 100.0)
        return String.format("%.2f", priceWithDiscountApplied).toDouble()
    }

    fun addSaleForFood(dateFrom: LocalDate, dateTo: LocalDate, percentage: Int, foodId: Long) {
        val today = LocalDate.now()
        if (percentage < 0 || percentage > 100) {
            throw Exception("Invalid percentage value. It should be between 0 and 100.");
        }
        if (dateFrom > dateTo) {
            throw Exception("Invalid date range. The start date should be before the end date.");
        }
        if (dateFrom < today) {
            throw Exception("Invalid date range. The start date should be in the future.");
        }
        val food = foodRepository.findFoodById(foodId)
        val existingActiveSaleForTheSameProduct = saleRepository.findByFoodAndIsActiveTrue(food)
        if (existingActiveSaleForTheSameProduct != null) {
            throw Exception("There is already an active sale for this product.")
        }

        saleRepository.save(
            Sale(
                id = null,
                percentage = percentage,
                dateFrom = dateFrom,
                dateTo = dateTo,
                food = food,
                isActive = true
            )
        )
    }

    fun getFoodsFromMyRestaurant(sessionId: String): List<Food> {
        val username = sessionRegistry.getUsernameForSession(sessionId)
        val employee = employeeRepository.findRestaurantEmployeeByUsername(username!!)
        val restaurant = employee.restaurant
        return foodRepository.findFoodsByRestaurantId(restaurant.id!!)
    }

    @Scheduled(cron = "0 0 0 * * *")
    fun expireSales() {
        val today = LocalDate.now()
        val salesToBeExpired = saleRepository.findAllByDateToBeforeAndIsActiveTrue(today)
        saleRepository.saveAll(salesToBeExpired.map {
            it.copy(isActive = false)
        })
    }

    fun recommendFoodForUser(sessionId: String): List<Food> {
        val username = sessionRegistry.getUsernameForSession(sessionId)!!
        val customer = customerRepository.findCustomerByUsername(username)
        val url = "http://127.0.0.1:8000/no-idea-what-to-eat/${customer.userId}"
        val response = restTemplate.getForObject(url, Array<Long>::class.java)
        return response?.map {
            foodRepository.findFoodById(it)
        } ?: getMostOrderedFood()
    }
}