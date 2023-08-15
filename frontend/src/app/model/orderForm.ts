import { PaymentMethod } from './paymentMethod';

export interface OrderForm {
  sessionId: string;
  street: string;
  number: string;
  paymentMethod: PaymentMethod;
}
