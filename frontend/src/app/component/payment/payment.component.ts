import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CardType } from 'src/app/model/cardType';
import { OrderForm } from 'src/app/model/orderForm';
import { Payment } from 'src/app/model/payment';
import { OrderService } from 'src/app/service/order.service';

@Component({
  selector: 'app-payment',
  templateUrl: './payment.component.html',
  styleUrls: ['./payment.component.css'],
})
export class PaymentComponent implements OnInit {
  orderFormData: OrderForm | undefined;

  paymentFormData: Payment = {
    cardHolderName: '',
    securityCode: '000',
    expYY: 24,
    expMM: 7,
    cardNumber: 1111111111111111,
    cardType: CardType.MasterCard,
  };

  constructor(
    private route: ActivatedRoute,
    private orderService: OrderService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.route.queryParams.subscribe((params) => {
      const orderFormDataString = params['orderFormData'];
      if (orderFormDataString) {
        this.orderFormData = JSON.parse(orderFormDataString);
      }
    });
  }

  order() {
    if (this.orderFormData) {
      this.orderService
        .order(this.orderFormData, this.paymentFormData)
        .subscribe((response) => {
          this.router.navigate(['/successfulOrder']);
        });
    } else {
      console.error('Order Form Data is undefined');
    }
  }
}
