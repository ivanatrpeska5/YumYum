import { Component, OnInit } from '@angular/core';
import { RestaurantOrderDTO } from 'src/app/model/restaurantOrderDTO';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-restaurant-orders',
  templateUrl: './restaurant-orders.component.html',
  styleUrls: ['./restaurant-orders.component.css'],
})
export class RestaurantOrdersComponent implements OnInit {
  restaurantOrders!: RestaurantOrderDTO[];

  constructor(private orderService: OrderService) {}
  ngOnInit(): void {
    this.getNewOrdersForRestaurant();
  }

  getNewOrdersForRestaurant() {
    this.orderService.getNewOrdersForRestaurant().subscribe((orders) => {
      this.restaurantOrders = orders;
    });
  }
}
