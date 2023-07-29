package com.sorsix.backend.model.dto

import com.sorsix.backend.model.Food

class CategoryFoodsDTO(val categoryName:String,val food: MutableList<Food> ) {
}