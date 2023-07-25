import { Location } from "./location"


export interface Restaurant {
  id: number
  name: string
  location: Location
  logo: string
  photo: string
  workingHours: any[]
  ratings: any[]
  averageRating: number
  deliveryTime: string
}