import { Cart } from "./cart";

export interface Order{
    cart:Cart,
    dateCreated:string,
    location:Location,
    paymentMethod:string,
    status:string
}