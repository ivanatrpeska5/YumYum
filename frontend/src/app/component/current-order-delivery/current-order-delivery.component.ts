import { Component } from '@angular/core';
import { Observable, map } from 'rxjs';
import { Order } from 'src/app/model/order';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-current-order-delivery',
  templateUrl: './current-order-delivery.component.html',
  styleUrls: ['./current-order-delivery.component.css'],
})
export class CurrentOrderDeliveryComponent {
  acceptedOrders$?: Observable<Order[]>;

  constructor(private orderService: OrderService) {}

  ngOnInit(): void {
    this.acceptedOrders$ = this.orderService.getAcceptedOrders();
  }

  deliverOrder(orderId: number) {
    this.orderService.deliverOrder(orderId).subscribe(() => {
      this.acceptedOrders$ = this.acceptedOrders$!.pipe(
        map((orders) => orders.filter((order) => order.id !== orderId))
      );
    });
  }
}
