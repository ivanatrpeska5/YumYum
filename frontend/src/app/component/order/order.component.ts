import { Component, OnInit } from '@angular/core';
import { PaymentMethod } from 'src/app/model/paymentMethod';
import { OrderForm } from 'src/app/model/orderForm';
import { OrderService } from 'src/app/service/order.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-order',
  templateUrl: './order.component.html',
  styleUrls: ['./order.component.css']
})
export class OrderComponent implements OnInit{

  orderFormData: OrderForm = {
    sessionId: '',
    street: '',
    number: '',
    paymentMethod: PaymentMethod.OnDelivery
  };
  
  constructor(
    private orderService:OrderService,
    private router: Router
  ) { }

  ngOnInit(): void {
  }

  order(){
    if(this.orderFormData.paymentMethod  === PaymentMethod.OnDelivery){
      this.orderService.order(this.orderFormData).subscribe(
        (response)=>{
          this.router.navigate(['/successfulOrder'])
        }
      );
    }
    else{
      this.router.navigate(['/payment'], { queryParams: { orderFormData: JSON.stringify(this.orderFormData) } });
    }
  }
}  


