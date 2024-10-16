package com.sorsix.backend.repository

import com.sorsix.backend.model.statistics.OrdersByCategory
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface OrderByCategoryRepository : JpaRepository<OrdersByCategory, Long> {}
