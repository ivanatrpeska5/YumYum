import { Component } from '@angular/core';
import { Observable, map } from 'rxjs';
import { Order } from 'src/app/model/order';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-accept-order-delivery',
  templateUrl: './accept-order-delivery.component.html',
  styleUrls: ['./accept-order-delivery.component.css']
})
export class AcceptOrderDeliveryComponent {
  preparedOrders$?: Observable<Order[]>;

  constructor(private orderService: OrderService) {}

  ngOnInit(): void {
    this.preparedOrders$ = this.orderService.getPreparedOrders();
  }

  acceptOrder(orderId:number){
    this.orderService.acceptOrder(orderId).subscribe(() => {
      this.preparedOrders$ = this.preparedOrders$!.pipe(
        map(orders => orders.filter(order => order.id !== orderId))
      );
    });
  }
  
}
