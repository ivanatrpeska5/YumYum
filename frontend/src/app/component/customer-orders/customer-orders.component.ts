import { Component, OnInit } from '@angular/core';
import { Order } from 'src/app/model/order';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-customer-orders',
  templateUrl: './customer-orders.component.html',
  styleUrls: ['./customer-orders.component.css']
})
export class CustomerOrdersComponent implements OnInit {

  customerOrders:Order[]=[]

  constructor(private orderService:OrderService){

  }
  ngOnInit(): void {
    const role=localStorage.getItem("role")
    if (role=="customer"){
      this.orderService.getCustomerOrders().subscribe(orders=>this.customerOrders=orders)
    }
  }

}
