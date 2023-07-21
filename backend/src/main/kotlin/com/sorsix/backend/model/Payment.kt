package com.sorsix.backend.model

import javax.persistence.*


@Entity
class Payment(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,
    val cardHolderName:String,
    val securityCode:String,
    val expYY:Long,
    val expMM:Long,
    val cardNumber: Long,

    @Enumerated
    val cardType: CardType
) {

}