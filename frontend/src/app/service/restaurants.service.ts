import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Restaurant } from '../model/restaurant';
import { Observable, catchError, tap } from 'rxjs';
import { FoodsByCategory } from '../model/foodsByCategory';
import { FoodInCart } from '../model/foodInCart';

@Injectable({
  providedIn: 'root'
})
export class RestaurantsService {


 
  private url=`api/restaurants`

  constructor(private http:HttpClient) { }

  getRestaurants(){
    return this.http.get<Restaurant[]>(this.url);
  }

  getRestaurant(id:number): Observable<Restaurant>{
    return this.http.get<Restaurant>(`${this.url}/${id}`)
  }

  getFoodsByCategory(id:number): Observable<FoodsByCategory[]>{
    return this.http.get<FoodsByCategory[]>(`${this.url}/foods/${id}`)
  }

  addFoodToCart(foodId: number, quantity: number){
    const userId=localStorage.getItem('token')
    return this.http.get<FoodInCart[]>(`${this.url}/addFoodInCart/${userId}/${foodId}/${quantity}`)
  }

  searchRestaurants(term: string) {
    if (!term.trim()) {
      return this.getRestaurants();
    }
    return this.http.get<Restaurant[]>(`${this.url}/search/?q=${term}`);
  }


}

