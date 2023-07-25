package com.sorsix.backend.model

import java.time.DayOfWeek
import java.time.LocalTime
import javax.persistence.*

@Entity
data class WorkingHours(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Enumerated(EnumType.STRING)
    val dayOfWeek: DayOfWeek,

    @Column(nullable = false)
    val startTime: LocalTime,

    @Column(nullable = false)
    val endTime: LocalTime,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "restaurant_id", nullable = false)
    val restaurant: Restaurant
)