import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class StatisticsService {

  private url = `api/statistics`

  constructor(private http: HttpClient) {
  }

  getOrdersByRestaurant() {
    return this.http.get<any>(`${ this.url }/orders-by-restaurant`);
  }

  getOrdersByCategory() {
    return this.http.get<any>(`${ this.url }/orders-by-category`);
  }

  getOrdersOverTimeByRestaurant() {
    return this.http.get<any>(`${ this.url }/orders-over-time-by-restaurant`);
  }

  getRevenueByRestaurant() {
    return this.http.get<any>(`${ this.url }/revenue-by-restaurant`)
  }
}

