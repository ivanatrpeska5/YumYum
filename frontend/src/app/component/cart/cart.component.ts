import { Component, OnInit } from '@angular/core';
import { CartInfo } from 'src/app/model/cartInfo';
import { CartService } from 'src/app/service/cart.service';
import { mergeMap } from 'rxjs/operators';
import { of } from 'rxjs';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css'],
})
export class CartComponent implements OnInit {
  cartsInfo: CartInfo[] | undefined;
  totalAmount = 0;

  constructor(private cartService: CartService) {}
  ngOnInit(): void {
    this.getCartsInfoForUser();
  }

  getCarts() {
    this.cartService.getCarts().subscribe();
  }

  getCartsInfoForUser() {
    this.cartService
      .getCartsInfoForUser()
      .pipe(
        mergeMap((cartsInfo) => {
          this.cartsInfo = cartsInfo;
          return this.calculateTotalAmount();
        })
      )
      .subscribe((totalAmount) => {
        this.totalAmount = totalAmount;
      });
  }

  calculateTotalAmount() {
    let totalAmount = 0;

    for (const cartItem of this.cartsInfo!!) {
      const { quantity, price } = cartItem;
      totalAmount += quantity * price;
    }

    return of(totalAmount);
  }

  removeFromCart(cartConsistsOfFoodId: number) {
    this.cartService
      .removeFromCart(cartConsistsOfFoodId)
      .subscribe(() => this.getCartsInfoForUser());
  }

  
}
