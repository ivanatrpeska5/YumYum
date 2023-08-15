package com.sorsix.backend.controller

import com.sorsix.backend.model.User
import com.sorsix.backend.model.dto.RegisterDto
import com.sorsix.backend.model.dto.UserSessionDto
import com.sorsix.backend.model.dto.UserDTO
import com.sorsix.backend.repository.RestaurantEmployeeRepository
import com.sorsix.backend.repository.UserRepository
import com.sorsix.backend.service.UserService
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.web.bind.annotation.*
import java.util.*
import javax.servlet.http.HttpServletRequest

@RestController
@RequestMapping("/api")
class AuthenticationController(
    private val userRepository: UserRepository,
    private val userService: UserService,
    private val restorantEmployeeRepository: RestaurantEmployeeRepository
) {
    @Autowired
    var manager: AuthenticationManager? = null

    @Autowired
    var sessionRegistry: InMemorySessionRegistry? = null

    @PostMapping("/login")
    fun login(@RequestBody user: UserDTO): ResponseEntity<UserSessionDto> {
        println(user.username)
        manager!!.authenticate(
            UsernamePasswordAuthenticationToken(user.username, user.password)
        )
        val sessionId: String? = sessionRegistry?.registerSession(user.username)
        val role = userRepository.findUserByUsername(user.username).role;
        var restaurantId: Long? = null;
        when (role) {
            "employee" -> {
                restaurantId = restorantEmployeeRepository.findByUsername(user.username)!!.restaurant.id
            }
        }
        val response = sessionId?.let { UserSessionDto(it, role, restaurantId) }
        println(sessionId)
        return ResponseEntity.ok(response)
    }


    @PostMapping("/logout")
    fun logout(@RequestBody sessionId: String, req: HttpServletRequest): ResponseEntity<String> {
        req.session.invalidate()
        sessionRegistry?.sessions?.remove(sessionId);
        return ResponseEntity.ok().body(sessionId);
    }

    @GetMapping("/user/{id}")
    fun user(@PathVariable id: Long): ResponseEntity<User> {
        return ResponseEntity.ok().body(userRepository.findById(id).get())
    }

    @PostMapping("/register")
    fun register(@RequestBody registerDto: RegisterDto) {
        userService.register(registerDto)
    }

}