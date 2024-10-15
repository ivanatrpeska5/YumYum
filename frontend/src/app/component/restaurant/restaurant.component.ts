import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { of, switchMap } from 'rxjs';
import { Category } from 'src/app/model/category';
import { Food } from 'src/app/model/food';
import { FoodsByCategory } from 'src/app/model/foodsByCategory';
import { Ingredient } from 'src/app/model/ingredient';
import { NewFood } from 'src/app/model/newFood';
import { Restaurant } from 'src/app/model/restaurant';
import { CartService } from 'src/app/service/cart.service';
import { FoodService } from 'src/app/service/food.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css'],
})
export class RestaurantComponent implements OnInit {
  restaurant: Restaurant | undefined;
  foodsByCategory: FoodsByCategory[] = [];
  quantity: { [id: number]: number } = {};
  isAddedToCart: { [id: number]: boolean } = {};
  sessionId: string | null = null;
  role: string | null = null;
  foodToUpdate: NewFood | undefined;
  selectedImage: File | undefined;
  categories: Category[] = [];
  newCategories: Category[] = [];
  ingredients: Ingredient[] = [];
  newIngredients: Ingredient[] = [];
  addRating: boolean[] = [];
  hasUserRated: boolean = false;
  @ViewChild('addCart') button!: ElementRef;

  ngOnInit(): void {
    this.getRestaurant();
    this.getFoodsbyCategory();
    this.quantity = {};
    this.sessionId = localStorage.getItem('token');
    this.role = localStorage.getItem('role');
    this.initForms();
    this.addRating = [true, false, false, false, false];
    this.foodToUpdate = {
      id: 0,
      photo: '',
      name: '',
      price: 0,
      restaurantId: 0,
      categorySet: [],
      ingredientsSet: [],
    };
    this.foodService
      .getCategories()
      .subscribe((categories) => (this.categories = categories));
    this.foodService
      .getIngredients()
      .subscribe((ingredients) => (this.ingredients = ingredients));
  }

  constructor(
    private restaurantsService: RestaurantsService,
    private foodService: FoodService,
    private route: ActivatedRoute,
    private router: Router,
    private formBuilder: FormBuilder,
    private cartService: CartService
  ) {}

  getRestaurant() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService
      .getRestaurant(id)
      .pipe(
        switchMap((restaurant) => {
          this.restaurant = restaurant;
          return of(null);
        })
      )
      .subscribe(() => {
        this.hasUserRatedTheRestaurant();
      });
  }

  getFoodsbyCategory() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService
      .getFoodsByCategory(id)
      .subscribe((foodsByCategory) => {
        this.foodsByCategory = foodsByCategory;
      });
  }

  createFoodForm(foodId: number): FormGroup {
    return this.formBuilder.group({
      foodId: [foodId],
      quantity: ['1', Validators.required],
    });
  }

  initForms() {
    this.foodsByCategory.forEach((category) => {
      category.food.forEach((food) => {
        this.quantity[food.id] = 1;
        this.isAddedToCart[food.id] = false;
      });
    });
  }

  onQuantityChange(foodId: number, quantity: number) {
    this.quantity[foodId] = quantity;
  }

  addToCart(food: Food) {
    var food_quantity = this.quantity[food.id];
    if (food_quantity == undefined) {
      food_quantity = 1;
    }
    if (food_quantity > 0) {
      this.cartService.addToCart(food.id, food_quantity);
    }
    this.isAddedToCart[food.id] = true;
    this.button.nativeElement.disabled = true;
  }

  isAuthenticated(): boolean {
    return this.sessionId != null;
  }

  deleteFood(foodId: number) {
    this.foodService.deleteFoodFromRestaurant(foodId).subscribe(() => {
      this.getFoodsbyCategory();
    });
  }

  edit(food: Food) {
    // Ensure foodToUpdate is correctly initialized with all required fields
    this.foodToUpdate = {
      id: food.id,
      photo: food.photo,
      name: food.name,
      price: food.price,
      restaurantId: food.restaurant.id, // Assign restaurant ID here
      categorySet: food.categorySet,
      ingredientsSet: food.ingredientsSet,
    };

    // Pre-select categories and ingredients
    this.newCategories = [...food.categorySet];
    this.newIngredients = [...food.ingredientsSet];
  }


  onFileChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedImage = inputElement.files[0];
    }
  }

  updateFood() {
    this.foodToUpdate!!.categorySet = this.newCategories;
    this.foodToUpdate!!.ingredientsSet = this.newIngredients;
    if (this.selectedImage) {
      this.foodService.uploadImage(this.selectedImage).subscribe(
        (response) => {
          this.foodToUpdate!!.photo = response.imageUrl;

          this.foodService.updateFood(this.foodToUpdate!!).subscribe(
            (response) => {
              this.getFoodsbyCategory();
            },
            (error) => {}
          );
        },
        (error) => {}
      );
    } else {
      this.foodService.updateFood(this.foodToUpdate!!).subscribe(
        (response) => {
          this.getFoodsbyCategory();
        },
        (error) => {}
      );
    }
  }

  onChangeRating(number: number) {
    let lastNumberTrue = 0;
    for (let i = 0; i < 5; i++) {
      if (this.addRating[i]) {
        lastNumberTrue = i;
      }
    }
    if (number > lastNumberTrue) {
      for (let i = 0; i < number; i++) {
        this.addRating[i] = true;
      }
    } else {
      for (let i = number; i < 5; i++) {
        this.addRating[i] = false;
      }
    }
  }

  onRatingSubmit() {
    let lastNumberTrue = 0;
    for (let i = 0; i < 5; i++) {
      if (this.addRating[i]) {
        lastNumberTrue = i;
      }
    }
    this.restaurantsService
      .rateRestaurant(this.restaurant!!.id, lastNumberTrue + 1)
      .subscribe((response) => {
        this.getRestaurant();
      });
  }

  hasUserRatedTheRestaurant() {
    for (let rating of this.restaurant!!.ratings) {
      if (rating.customer.username == localStorage.getItem('username')) {
        this.hasUserRated = true;
      }
    }
  }
}
