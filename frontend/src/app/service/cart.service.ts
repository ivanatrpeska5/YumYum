import { HttpClient } from '@angular/common/http';
import { Injectable, OnInit } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class CartService implements OnInit {
  private url = 'api/cart';

  constructor(private http: HttpClient) {}

  ngOnInit(): void {}

  addToCart(foodId: number, quantity: number) {
    const sessionId = localStorage.getItem('token');
    this.http
      .post<any>(this.url, {
        foodId: foodId,
        quantity: quantity,
        sessionId: sessionId,
      })
      .subscribe((data) => {});
  }

  getCarts() {
    const sessionId = localStorage.getItem('token');
    return this.http.get<any>(`${this.url}/${sessionId}`);
  }

  getCartsInfoForUser() {
    const sessionId = localStorage.getItem('token');
    return this.http.get<any>(`${this.url}/info/${sessionId}`);
  }

  removeFromCart(cartConsistsOfFoodId: number) {
    return this.http.delete<any>(
      `${this.url}/remove-from-cart/${cartConsistsOfFoodId}`
    );
  }

  order() {
    const sessionId = localStorage.getItem('token');
    return this.http.post<any>(`${this.url}/order`, { sessionId: sessionId });
  }
}
