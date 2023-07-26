package com.sorsix.backend.controller
import com.sorsix.backend.model.dto.ResponseDTO
import com.sorsix.backend.model.dto.UserDTO
import com.sorsix.backend.session.InMemorySessionRegistry
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*
import javax.servlet.http.HttpServletRequest

@RestController
@RequestMapping("/api")
class AuthenticationController {
    @Autowired
    var manager: AuthenticationManager? = null

    @Autowired
    var sessionRegistry: InMemorySessionRegistry? = null

    @PostMapping("/login")
    fun login(@RequestBody user:UserDTO): ResponseEntity<ResponseDTO> {
        println(user.username)
        manager!!.authenticate(
            UsernamePasswordAuthenticationToken(user.username, user.password)
        )
        val sessionId: String? = sessionRegistry?.registerSession(user.username)
        val response = sessionId?.let { ResponseDTO(it) }
        println(sessionId)
        return ResponseEntity.ok(response)
    }


    @PostMapping("/logout")
    fun logout(@RequestBody sessionId:String, req: HttpServletRequest): ResponseEntity<String> {
        req.session.invalidate()
        sessionRegistry?.sessions?.remove(sessionId);
        return ResponseEntity.ok().body(sessionId);
    }

}