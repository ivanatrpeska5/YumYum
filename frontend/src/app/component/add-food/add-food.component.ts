import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Category } from 'src/app/model/category';
import { Food } from 'src/app/model/food';
import { Ingredient } from 'src/app/model/ingredient';
import { NewFood } from 'src/app/model/newFood';
import { Restaurant } from 'src/app/model/restaurant';
import { FoodService } from 'src/app/service/food.service';

@Component({
  selector: 'app-add-food',
  templateUrl: './add-food.component.html',
  styleUrls: ['./add-food.component.scss'],
})
export class AddFoodComponent implements OnInit {
  newFood: NewFood = {
    id: null,
    photo: '',
    restaurantId: null,
    name: '',
    price: 0,
    categorySet: [],
    ingredientsSet: [],
  };

  selectedImage: File | undefined;

  restaurant?: Restaurant;

  selectedCategories: Category[] = [];

  selectedIngredients: Ingredient[] = [];

  categories: Category[] = [];

  ingredients: Ingredient[] = [];

  constructor(
    private foodService: FoodService,
    private router: Router,
    private activatedRoute: ActivatedRoute
  ) {}
  ngOnInit(): void {
    this.foodService.getRestaurantByEmployee().subscribe((restaurant) => {
      this.restaurant = restaurant;
    });
    this.foodService
      .getCategories()
      .subscribe((categories) => (this.categories = categories));
    this.foodService
      .getIngredients()
      .subscribe((ingredients) => (this.ingredients = ingredients));
  }

  onSubmit() {
    this.newFood.categorySet = this.selectedCategories;
    this.newFood.ingredientsSet = this.selectedIngredients;
    this.newFood.restaurantId = this.restaurant?.id;

    if (this.selectedImage) {
      this.foodService.uploadImage(this.selectedImage).subscribe(
        (response) => {
          this.newFood!!.photo = response.imageUrl;

          this.foodService.postFood(this.newFood!!).subscribe(
            (response) => {
              this.router.navigate([`restaurant/${this.restaurant?.id}`]);
            },
            (error) => {}
          );
        },
        (error) => {}
      );
    } else {
      this.foodService.postFood(this.newFood!!).subscribe(
        (response) => {
          this.router.navigate([`restaurant/${this.restaurant?.id}`]);
        },
        (error) => {}
      );
    }
  }

  onFileChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedImage = inputElement.files[0];
    }
  }
}
