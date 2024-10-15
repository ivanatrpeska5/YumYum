import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthenticationGuard } from './authentication.guard';
import { HomeComponent } from './component/home/home.component';
import { LoginComponent } from './component/login/login.component';
import { RestaurantsComponent } from './component/restaurants/restaurants.component';
import { RestaurantComponent } from './component/restaurant/restaurant.component';
import { RegisterComponent } from './component/register/register.component';
import { CartComponent } from './component/cart/cart.component';
import { OrderComponent } from './component/order/order.component';
import { AddFoodComponent } from './component/add-food/add-food.component';
import { PaymentComponent } from './component/payment/payment.component';
import { SuccessfulOrderComponent } from './component/successful-order/successful-order.component';
import { CustomerOrdersComponent } from './component/customer-orders/customer-orders.component';
import { RestaurantOrdersComponent } from './component/restaurant-orders/restaurant-orders.component';
import { AcceptOrderDeliveryComponent } from './component/accept-order-delivery/accept-order-delivery.component';
import { CurrentOrderDeliveryComponent } from './component/current-order-delivery/current-order-delivery.component';
import { FinishedOrderDeliveryComponent } from './component/finished-order-delivery/finished-order-delivery.component';
import { AboutUsComponent } from './component/about-us/about-us.component';
import { AddSaleComponent } from "./component/add-sale/add-sale.component";
import { AdminPanelComponent } from "./component/admin-panel/admin-panel.component";
import {AddRestaurantComponent} from "./component/add-restaurant/add-restaurant.component";

const routes: Routes = [
  {
    path: '',
    canActivate: [AuthenticationGuard],
    children: [
      { path: '', component: HomeComponent },
      { path: 'login', component: LoginComponent },
      { path: 'restaurants', component: RestaurantsComponent },
      { path: 'restaurant/:id', component: RestaurantComponent },
      { path: 'register', component: RegisterComponent },
      { path: 'cart', component: CartComponent },
      { path: 'order', component: OrderComponent },
      { path: 'add-product', component: AddFoodComponent },
      { path: 'add-sale', component: AddSaleComponent },
      { path: 'admin-panel', component: AdminPanelComponent },
      { path: 'payment', component: PaymentComponent },
      { path: 'successfulOrder', component: SuccessfulOrderComponent },
      { path: 'myOrders', component: CustomerOrdersComponent },
      { path: 'restaurantOrders', component: RestaurantOrdersComponent },
      { path: 'preparedOrders', component: AcceptOrderDeliveryComponent },
      { path: 'currentOrders', component: CurrentOrderDeliveryComponent },
      { path: 'deliveredOrders', component: FinishedOrderDeliveryComponent },
      { path: 'aboutUs', component: AboutUsComponent },
      { path: 'add-restaurant', component: AddRestaurantComponent },
      { path: '**', redirectTo: '' },
    ],
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
