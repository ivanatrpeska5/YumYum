import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Restaurant } from '../model/restaurant';

@Injectable({
  providedIn: 'root'
})
export class RestaurantsService {

  constructor(private http:HttpClient) { }

  getRestaurants(){
    const url=`api/restaurants`
    return this.http.get<Restaurant[]>(url);
  }

}
