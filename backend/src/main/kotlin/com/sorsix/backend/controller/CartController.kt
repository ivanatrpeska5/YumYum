package com.sorsix.backend.controller

import com.sorsix.backend.model.Cart
import com.sorsix.backend.model.dto.AddFoodToCartDto
import com.sorsix.backend.model.dto.CartInfoDTO
import com.sorsix.backend.model.dto.UserSessionDto
import com.sorsix.backend.service.CartService
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/api/cart")
class CartController (private val cartService: CartService) {

    @PostMapping()
    fun addToCart(@RequestBody dto:AddFoodToCartDto): ResponseEntity<UserSessionDto> {

        cartService.addFoodToCart(dto)
        return ResponseEntity.ok().body(UserSessionDto(dto.sessionId,"customer"))
    }

    @GetMapping("/{sessionId}")
    fun getCarts(@PathVariable sessionId:String): ResponseEntity<Set<Cart>> {
        return ResponseEntity.ok().body(cartService.getCarts(sessionId))
    }

    @GetMapping("/info/{sessionId}")
    fun getCartsInfoForUser(@PathVariable sessionId: String): ResponseEntity<List<CartInfoDTO>>{
        return ResponseEntity.ok().body(cartService.getCartsInfoForUser(sessionId))
    }
}