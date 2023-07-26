import { Category } from "./category"
import { Restaurant } from "./restaurant"

export interface Food {
    id: number
    photo: string
    name: string
    price: number
    restaurant: Restaurant
    ingredientsList: any[]
    categories: Category[]
  }