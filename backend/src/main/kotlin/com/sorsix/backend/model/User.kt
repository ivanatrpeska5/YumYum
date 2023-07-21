package com.sorsix.backend.model

import lombok.Data
import javax.persistence.*


@Entity
@MappedSuperclass
@Data
abstract class User(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) open var userId: Long,
    open var name:String,
    open var surname:String,
    open var email:String,
    open var phone:String,
    open var password:String,
){}