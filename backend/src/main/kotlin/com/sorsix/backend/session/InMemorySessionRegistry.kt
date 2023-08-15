package com.sorsix.backend.session

import com.sorsix.backend.service.UserService
import org.springframework.stereotype.Component
import java.nio.charset.StandardCharsets
import java.util.*

@Component
class InMemorySessionRegistry() {
    val sessions= HashMap<String, String>();

    fun getUsernameForSession(sessionId: String?): String? {
        return sessions[sessionId]
    }

    fun registerSession(username: String?): String? {
        if (username == null) {
            throw RuntimeException("Username needs to be provided")
        }
        val sessionId = generateSessionId()
        sessions[sessionId] = username
        return sessionId
    }

    private fun generateSessionId(): String {
        return String(
            Base64.getEncoder().encode(
                UUID.randomUUID().toString().toByteArray(StandardCharsets.UTF_8)
            )
        )
    }

}