import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Restaurant } from '../model/restaurant';
import { Observable } from 'rxjs';
import { FoodsByCategory } from '../model/foodsByCategory';

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

}
