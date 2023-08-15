package com.sorsix.backend.repository;

import com.sorsix.backend.model.Location
import org.springframework.data.jpa.repository.JpaRepository

interface LocationRepository : JpaRepository<Location, Long> {
}