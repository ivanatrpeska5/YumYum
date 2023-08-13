import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { Food } from 'src/app/model/food';
import { FoodsByCategory } from 'src/app/model/foodsByCategory';
import { Restaurant } from 'src/app/model/restaurant';
import { CartService } from 'src/app/service/cart.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';
import { MatDialog, MatDialogConfig } from '@angular/material/dialog';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  restaurant: Restaurant | undefined;
  foodsByCategory: FoodsByCategory[] = [];
  quantity: { [id: number]: number } = {}
  sessionId: string | null = null;
  role: string | null = null;

  ngOnInit(): void {
    this.getRestaurant()
    this.getFoodsbyCategory()
    console.log(this.foodsByCategory)
    this.quantity = {}
    this.sessionId = localStorage.getItem('token');
    this.role = localStorage.getItem('role')
    this.initForms();
  }

  constructor(private restaurantsService: RestaurantsService,
    private route: ActivatedRoute,
    private formBuilder: FormBuilder,
    private cartService: CartService,
    private dialog: MatDialog) {

  }

  getRestaurant() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService.getRestaurant(id).subscribe(restaurant => {
      this.restaurant = restaurant
    })
  }

  getFoodsbyCategory() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService.getFoodsByCategory(id).subscribe(foodsByCategory => {
      this.foodsByCategory = foodsByCategory
    })
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
        this.quantity[food.id] = 1; // Set default quantity to 1 for each food item
      });
    });
  }

  onQuantityChange(foodId: number, quantity: number) {
    this.quantity[foodId] = quantity;
  }

  addToCart(food:Food,notification:boolean) {
    console.log(food.id)
    var food_quantity = this.quantity[food.id]
    console.log(food_quantity)
    if (food_quantity == undefined) {
      food_quantity = 1
    }
    if (food_quantity > 0) {
      this.cartService.addToCart(food.id, food_quantity)
    }
  }


  isAuthenticated(): boolean {
    return this.sessionId != null;
  }
}
