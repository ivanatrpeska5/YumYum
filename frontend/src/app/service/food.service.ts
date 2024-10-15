import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Food } from '../model/food';
import { Restaurant } from '../model/restaurant';
import { Ingredient } from '../model/ingredient';
import { Category } from '../model/category';
import { NewFood } from '../model/newFood';
import { RestaurantsService } from './restaurants.service';
import { NewSale } from "../model/newSale";

@Injectable({
  providedIn: 'root',
})
export class FoodService {
  private baseUrl = 'api/food';

  getRestaurantByEmployee() {
    const sessionId = localStorage.getItem('token');
    return this.http.get<Restaurant>(`api/restaurant/${sessionId}`);
  }

  constructor(
    private http: HttpClient,
    private restaurantService: RestaurantsService
  ) {}

  postFood(food: NewFood): Observable<any> {
    const url = `${this.baseUrl}/add`;
    return this.http.post<NewFood>(url, food);
  }

  getIngredients() {
    return this.http.get<Ingredient[]>(`api/ingredients`);
  }

  getCategories() {
    return this.http.get<Category[]>(`api/categories`);
  }

  uploadImage(image: File): Observable<any> {
    const formData = new FormData();
    formData.append('image', image, image.name);

    const headers = new HttpHeaders();
    headers.append('Content-Type', 'application/json');

    const url = `${this.baseUrl}/photo`;
    return this.http.post(url, formData, { headers });
  }

  deleteFoodFromRestaurant(foodId: number) {
    return this.http.delete<Food>(`api/food/delete/${foodId}`);
  }

  updateFood(food: NewFood) {
    return this.http.put<Food>(`api/food/update`, food);
  }

  addSale(newSale: NewSale) {
    return this.http.post<void>(`api/food/add-sale`, newSale);
  }

  getNewFood() {
    return this.http.get<Food[]>(`api/newestFood`);
  }

  getFoodsFromMyRestaurant() {
    const sessionId = localStorage.getItem('token');
    return this.http.get<Food[]>(`api/foods-from-my-restaurant/${sessionId}`);
  }

  getMostOrdered() {
    return this.http.get<Food[]>(`api/mostOrdered`);
  }

  getRecommendation() {
    const sessionId = localStorage.getItem('token');
    return this.http.get<Food[]>(`api/recommendation/${sessionId}`)
  }

  getOnSale() {
    return this.http.get<Food[]>(`api/onSale`);
  }
}
