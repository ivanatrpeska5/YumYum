import { Injectable } from '@angular/core';
import { OrderForm } from '../model/orderForm';
import { HttpClient } from '@angular/common/http';
import { Payment } from '../model/payment';
import { RestaurantOrderDTO } from '../model/restaurantOrderDTO';
import { Order } from '../model/order';

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

  getPreparedOrders(){
    return this.http.get<Order[]>(`${this.url}/prepared`)
  }

  cancelOrder(orderId:number){
    return this.http.put<any>(`${this.url}/cancel/${orderId}`,{})
  }

  preparedOrder(orderId:number){
    return this.http.put<any>(`${this.url}/prepared/${orderId}`,{})
  }

  acceptOrder(orderId:number){
    const sessionId=localStorage.getItem('token');
    return this.http.put(`${this.url}/accept/${sessionId}/${orderId}`,{})
  }

  getAcceptedOrders(){
    const sessionId=localStorage.getItem('token');
    return this.http.get<Order[]>(`${this.url}/accepted/${sessionId}`)
  }

  deliverOrder(orderId:number){
    return this.http.put<any>(`${this.url}/deliver/${orderId}`,{})
  }

  getDeliveredOrders(){
    const sessionId=localStorage.getItem('token');
    return this.http.get<Order[]>(`${this.url}/delivered/${sessionId}`)
  }
}
