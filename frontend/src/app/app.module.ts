import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { ReactiveFormsModule } from '@angular/forms'; 

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LoginComponent } from './component/login/login.component';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { HomeComponent } from './component/home/home.component';
import { RequestInterceptor } from './request.interceptor';
import { RestaurantsComponent } from './component/restaurants/restaurants.component';
import { RestaurantComponent } from './component/restaurant/restaurant.component';
import { RegisterComponent } from './component/register/register.component';
import { CartComponent } from './component/cart/cart.component';
import { OrderComponent } from './component/order/order.component';
import { AddFoodComponent } from './component/add-food/add-food.component';

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    RestaurantsComponent,
    RestaurantComponent,
    RegisterComponent,
    CartComponent,
    OrderComponent,
    AddFoodComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [{ provide: HTTP_INTERCEPTORS, useClass: RequestInterceptor, multi: true }],
  bootstrap: [AppComponent]
})
export class AppModule { }
