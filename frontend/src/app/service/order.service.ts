import { Injectable } from '@angular/core';
import { OrderForm } from '../model/orderForm';
import { HttpClient } from '@angular/common/http';
import { Payment } from '../model/payment';
import { RestaurantOrderDTO } from '../model/restaurantOrderDTO';

@Injectable({
  providedIn: 'root'
})
export class OrderService {

  private url = 'api/order';

  constructor(
    private http: HttpClient
  ) { }

  order(orderFormData: OrderForm, paymentFormData?: Payment) {
    const sessionId = localStorage.getItem('token');
    orderFormData.sessionId = sessionId!!;  
    const requestBody = paymentFormData
    ? { orderFormData, paymentFormData }
    : { orderFormData };
    return this.http.post<any>(`${this.url}`, requestBody);
  }

  getNewOrdersForRestaurant(){
    const sessionId = localStorage.getItem('token');
    return this.http.get<RestaurantOrderDTO[]>(`${this.url}/restaurant/${sessionId}`);
  }

  getCustomerOrders(){
    const sessionId = localStorage.getItem('token');
    return this.http.get<Order[]>(`${this.url}/customer-orders/${sessionId}`)
  }
}
