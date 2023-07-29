package com.sorsix.backend.repository;

import com.sorsix.backend.model.Customer
import org.springframework.data.jpa.repository.JpaRepository

interface CustomerRepository : JpaRepository<Customer, Long> {
    fun findCustomerByUsername(username:String):Customer;
}