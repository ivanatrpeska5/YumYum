package com.sorsix.backend.controller

import com.sorsix.backend.service.CartService
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class CartController (private val cartService: CartService) {

    @GetMapping("/addToCart/{foodId}/{quantity}/{userId}")
    fun addToCart(@PathVariable foodId: Long,@PathVariable quantity: Int, @PathVariable userId:Long) {

    }
}