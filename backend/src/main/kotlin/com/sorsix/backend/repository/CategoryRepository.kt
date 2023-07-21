package com.sorsix.backend.repository;

import com.sorsix.backend.model.Category
import org.springframework.data.jpa.repository.JpaRepository

interface CategoryRepository : JpaRepository<Category, Long> {
}