package com.sorsix.backend.controller

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.dto.AddFoodToCartDto
import com.sorsix.backend.model.dto.UserSessionDto
import com.sorsix.backend.service.CartService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/api")
class CartController (private val cartService: CartService) {

    @PostMapping("/cart")
    fun addToCart(@RequestBody dto:AddFoodToCartDto): ResponseEntity<UserSessionDto> {

        cartService.addFoodToCart(dto)
        return ResponseEntity.ok().body(UserSessionDto(dto.sessionId,"customer"))
    }

    @GetMapping("/cart/{sessionId}")
    fun getCarts(@PathVariable sessionId:String): ResponseEntity<Set<Cart>> {
        return ResponseEntity.ok().body(cartService.getCarts(sessionId))
    }
}