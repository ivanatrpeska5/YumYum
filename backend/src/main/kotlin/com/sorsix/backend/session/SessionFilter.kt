package com.sorsix.backend.session

import com.sorsix.backend.model.User
import com.sorsix.backend.service.UserService
import org.springframework.http.HttpHeaders
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource
import org.springframework.stereotype.Component
import org.springframework.web.filter.OncePerRequestFilter
import javax.servlet.FilterChain
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

@Component
class SessionFilter(private val sessionRegistry: InMemorySessionRegistry, val userService: UserService): OncePerRequestFilter() {
    override fun doFilterInternal(
        request: HttpServletRequest,
        response: HttpServletResponse,
        filterChain: FilterChain
    ) {
        val sessionId = request.getHeader(HttpHeaders.AUTHORIZATION)
        if (sessionId == null || sessionId.isEmpty()) {
            filterChain.doFilter(request, response)
            return
        }

        val username = sessionRegistry.getUsernameForSession(sessionId)
        if (username == null) {
            filterChain.doFilter(request, response)
            return
        }

        val currentUser: User = userService.loadUserByUsername(username)
        val auth = UsernamePasswordAuthenticationToken(
            currentUser,
            null,
            currentUser.authorities
        )
        auth.setDetails(WebAuthenticationDetailsSource().buildDetails(request))
        SecurityContextHolder.getContext().setAuthentication(auth)

        filterChain.doFilter(request, response)
    }


}