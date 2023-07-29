import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CartService {

  private url='api/cart'

  constructor(private http:HttpClient) { }


  addToCart(foodId:number,quantity:number){
    const sessionId=localStorage.getItem('token')
    this.http.post<any>(this.url, { foodId:foodId, quantity:quantity, sessionId:sessionId }).subscribe((data) => {
        
    })
  }

  getCarts(){
    const sessionId=localStorage.getItem('token')
    return this.http.get<any>(`${this.url}/${sessionId}`)
  }
}
