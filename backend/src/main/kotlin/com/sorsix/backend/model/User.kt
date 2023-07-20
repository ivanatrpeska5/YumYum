package com.sorsix.backend.model

import javax.persistence.*


@Entity
@Table(name = "CustomUser")
@MappedSuperclass
open class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    open var id: Long? = null

    @Column
    open var email: String? = null

    @Column
    open var password: String? = null

    @Column
    open var name: String? = null

    @Column
    open var surname: String? = null


    @Column
    open var phone: String? = null



}