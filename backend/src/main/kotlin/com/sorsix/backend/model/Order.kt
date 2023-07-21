package com.sorsix.backend.model

import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    open val id: Long,

    open val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated
    open var status:OrderStatus,

    @ManyToOne
    open var location: Location)

