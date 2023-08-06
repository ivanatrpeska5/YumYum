import { Cart } from "./cart";
import { Location } from "./location";

export interface Order{
    id:number,
    cart:Cart,
    dateCreated:string,
    location:Location,
    paymentMethod:string,
    status:string
}