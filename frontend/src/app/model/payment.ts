import { CardType } from './cardType';

export interface Payment {
  cardHolderName: string;
  securityCode: string;
  expYY: number;
  expMM: number;
  cardNumber: number;
  cardType: CardType;
}
