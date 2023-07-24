import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AuthenticationGuard } from './authentication.guard';
import { HomeComponent } from './component/home/home.component';
import { LoginComponent } from './component/login/login.component';
import { RestaurantComponent } from './component/restaurant/restaurant.component';

const routes: Routes = [
  {path: '', canActivate:[AuthenticationGuard], children: [
    { path: '', component: HomeComponent },
    { path: 'login', component: LoginComponent },
    { path: 'restaurants', component: RestaurantComponent},
    { path: '**', redirectTo: '' },
  ]}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }