import { Injectable } from '@angular/core';
import { OrderForm } from '../model/orderForm';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class OrderService {

  private url = 'api/order';

  constructor(
    private http: HttpClient
  ) { }

  order(formData: OrderForm) {
    const sessionId = localStorage.getItem('token');
    formData.sessionId = sessionId!!;    
    return this.http.post<any>(`${this.url}`, formData);
  }

}
