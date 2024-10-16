import {Component, OnInit} from '@angular/core';
import {Router} from "@angular/router";
import {AddRestaurantRequest} from "../../model/AddRestaurantRequest";
import {RestaurantsService} from "../../service/restaurants.service";
import {FoodService} from "../../service/food.service";
import {catchError, forkJoin, of, switchMap, tap} from "rxjs";

@Component({
  selector: 'add-restaurant',
  templateUrl: './add-restaurant.component.html',
  styleUrls: ['./add-restaurant.component.scss']
})

export class AddRestaurantComponent implements OnInit {
  newRestaurant: AddRestaurantRequest = {
    name: '',
    location: {
      id: 0,
      street: '',
      number: '',
    },
    logo: '',
    photo: '',
  };

  selectedLogo: File | undefined;
  selectedPhoto: File | undefined;

  constructor(private restaurantService: RestaurantsService, private router: Router, private foodService: FoodService) {
  }

  ngOnInit(): void {
  }

  onSubmit() {
    if (this.selectedLogo && this.selectedPhoto) {
      this.foodService.uploadImage(this.selectedLogo).pipe(
        tap(logoResponse => {
          this.newRestaurant.logo = logoResponse.imageUrl;
        }),
        switchMap(() => this.foodService.uploadImage(this.selectedPhoto!!)),
        tap(photoResponse => {
          this.newRestaurant.photo = photoResponse.imageUrl;
        }),
        switchMap(() => this.restaurantService.postRestaurant(this.newRestaurant))
      ).subscribe(
        (response) => {
          this.router.navigate(['/restaurants']);
        }
      );
    }
  }

  onLogoChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedLogo = inputElement.files[0];
    }
  }

  onPhotoChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedPhoto = inputElement.files[0];
    }
  }
}
