import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Restaurant } from '../model/restaurant';
import { Observable } from 'rxjs';

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

}
