package com.sorsix.backend.model

import javax.persistence.*


@Entity
@Table(name = "CustomUser")
@MappedSuperclass
open class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private var id: Long? = null

    @Column
    private var email: String? = null

    @Column
    private var password: String? = null

    @Column
    private var name: String? = null

    @Column
    private var surname: String? = null


    @Column
    private var phone: String? = null



}