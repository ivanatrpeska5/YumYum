import { Location } from './location'
import { FoodQuantityDTO } from './foodQuantityDTO'


export interface RestaurantOrderDTO {
    id: number
    dateCreated: string
    status: string
    location: Location
    customerId: number
    customerName: string
    customerSurname: string
    customerUsername: string
    paymentMethod: string
    cartId: number
    foodQuantity: FoodQuantityDTO[]
  }