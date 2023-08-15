import { Component, OnInit } from '@angular/core';
import { Route, Router } from '@angular/router';
import { RestaurantOrderDTO } from 'src/app/model/restaurantOrderDTO';
import { OrderService } from 'src/app/service/order.service';
import { Observable, debounceTime, map, switchMap } from 'rxjs';

@Component({
  selector: 'app-restaurant-orders',
  templateUrl: './restaurant-orders.component.html',
  styleUrls: ['./restaurant-orders.component.css'],
})
export class RestaurantOrdersComponent implements OnInit {
  restaurantOrders$?: Observable<RestaurantOrderDTO[]>;

  constructor(private orderService: OrderService) {}

  ngOnInit(): void {
    this.restaurantOrders$ = this.orderService.getNewOrdersForRestaurant();
  }

  cancelOrder(orderId: number) {
    this.orderService.cancelOrder(orderId).subscribe(() => {
      this.restaurantOrders$ = this.restaurantOrders$!.pipe(
        map((orders) => orders.filter((order) => order.id !== orderId))
      );
    });
  }

  preparedOrder(orderId: number) {
    this.orderService.preparedOrder(orderId).subscribe(() => {
      this.restaurantOrders$ = this.restaurantOrders$!.pipe(
        map((orders) => orders.filter((order) => order.id !== orderId))
      );
    });
  }
}
