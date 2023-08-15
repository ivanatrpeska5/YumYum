import { Component } from '@angular/core';
import { Observable } from 'rxjs';
import { Order } from 'src/app/model/order';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-finished-order-delivery',
  templateUrl: './finished-order-delivery.component.html',
  styleUrls: ['./finished-order-delivery.component.css'],
})
export class FinishedOrderDeliveryComponent {
  deliveredOrders$?: Observable<Order[]>;

  constructor(private orderService: OrderService) {}

  ngOnInit(): void {
    this.deliveredOrders$ = this.orderService.getDeliveredOrders();
  }
}
