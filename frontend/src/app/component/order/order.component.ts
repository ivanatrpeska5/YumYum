import { Component, OnInit } from '@angular/core';
import { PaymentMethod } from 'src/app/model/paymentMethod';
import { OrderForm } from 'src/app/model/orderForm';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.css']
})
export class OrderComponent implements OnInit{

  formData: OrderForm = {
    sessionId: '',
    street: '',
    number: '',
    paymentMethod: PaymentMethod.OnDelivery
  };
  
  constructor(
    private orderService:OrderService,
  ) {  

  }
  ngOnInit(): void {
    throw new Error('Method not implemented.');
  }

  order(){
    this.orderService.order(this.formData).subscribe();
  }
}
