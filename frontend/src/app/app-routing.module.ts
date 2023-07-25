import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthenticationGuard } from './authentication.guard';
import { HomeComponent } from './component/home/home.component';
import { LoginComponent } from './component/login/login.component';
import { RestaurantsComponent } from './component/restaurants/restaurants.component';
import { RestaurantComponent } from './component/restaurant/restaurant.component';
import { RegisterComponent } from './component/register/register.component';

const routes: Routes = [
  {path: '', canActivate:[AuthenticationGuard], children: [
    { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    {path: 'restaurants', component: RestaurantsComponent},
    {path: 'restaurant/:id', component: RestaurantComponent},
    {path: 'register', component: RegisterComponent},
    { path: '**', redirectTo: '' }
  ]},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }