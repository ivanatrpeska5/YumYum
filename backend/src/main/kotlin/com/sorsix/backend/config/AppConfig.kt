package com.sorsix.backend.config

import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.web.client.RestTemplate

@Configuration
class AppConfig {
    @Bean
    fun passwordEncoder(): BCryptPasswordEncoder {
        return BCryptPasswordEncoder()
    }
    @Bean
    fun restTemplate(): RestTemplate {
        return RestTemplate()
    }

}