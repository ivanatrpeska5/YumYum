import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { RegisterForm } from 'src/app/model/registerForm';
import { Restaurant } from 'src/app/model/restaurant';
import { AuthService } from 'src/app/service/auth.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css'],
})
export class RegisterComponent implements OnInit {
  formData: RegisterForm = {
    name: '',
    surname: '',
    email: '',
    phone: '',
    password: '',
    username: '',
    role: 'customer',
    restaurantId: undefined,
  };

  restaurants: Restaurant[] = [];

  constructor(
    private http: HttpClient,
    private authService: AuthService,
    private restaurantsService: RestaurantsService,
    private router: Router,
    private activatedRoute: ActivatedRoute
  ) {}
  ngOnInit(): void {
    this.restaurantsService.getRestaurants().subscribe((restaurants) => {
      this.restaurants = restaurants;
    });
  }

  onSubmit() {
    this.authService.register(this.formData);
    this.router.navigate(['/login'], { relativeTo: this.activatedRoute });
  }
}
