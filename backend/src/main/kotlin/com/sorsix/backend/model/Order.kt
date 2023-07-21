package com.sorsix.backend.model

import lombok.Data
import java.time.LocalDate
import javax.persistence.*

@Entity
@Data
class Order(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,

    val dateCreated: LocalDate = LocalDate.now(),

    @Enumerated
    var status:OrderStatus,

    @ManyToOne
    var location: Location)

