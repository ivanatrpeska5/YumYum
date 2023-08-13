import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Food } from '../model/food';
import { Restaurant } from '../model/restaurant';
import { Ingredient } from '../model/ingredient';
import { Category } from '../model/category';
import { NewFood } from '../model/newFood';
import { RestaurantsService } from './restaurants.service';

@Injectable({
  providedIn: 'root'
})
export class FoodService {

  private baseUrl = 'api/food'; // Replace this with your actual backend API URL

  getRestaurantByEmployee(){
    const sessionId=localStorage.getItem('token')
    return this.http.get<Restaurant>(`api/restaurant/${sessionId}`)
  }

  constructor(
    private http: HttpClient,
    private restaurantService: RestaurantsService
    ) {}

  // Method to post food to the server
  postFood(food: NewFood): Observable<any> {
    const url = `${this.baseUrl}/add`;
    console.log(food.restaurant)
    return this.http.post<NewFood>(url, food);
  }

  getIngredients(){
    return this.http.get<Ingredient[]>(`api/ingredients`)
  }

  getCategories(){
    return this.http.get<Category[]>(`api/categories`)
  }

  // Method to upload image to the server
  

  uploadImage(image: File): Observable<any> {
    const formData = new FormData();
    formData.append('image', image, image.name);
    
    // Set the headers properly for file upload
    const headers = new HttpHeaders();
    headers.append('Content-Type', 'application/json');

    const url = `${this.baseUrl}/photo`; // Replace with the actual endpoint for image upload
    return this.http.post(url, formData, { headers });
  }

  deleteFoodFromRestaurant(foodId:number){
    return this.http.delete<Food>(`api/food/delete/${foodId}`)
  }

  updateFoodFromRestaurant(food: Food){
    return this.http.put<Food>(`api/food/update`, food)
  }

  getNewFood(){
    return this.http.get<Food[]>(`api/newestFood`)
  }
}
