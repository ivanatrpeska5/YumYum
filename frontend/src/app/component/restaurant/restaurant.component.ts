import { Component, ElementRef, OnInit, ViewChild } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Category } from 'src/app/model/category';
import { Food } from 'src/app/model/food';
import { FoodsByCategory } from 'src/app/model/foodsByCategory';
import { Ingredient } from 'src/app/model/ingredient';
import { Restaurant } from 'src/app/model/restaurant';
import { CartService } from 'src/app/service/cart.service';
import { FoodService } from 'src/app/service/food.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  restaurant: Restaurant | undefined;
  foodsByCategory: FoodsByCategory[] = [];
  quantity: { [id: number]: number } = {}
  isAddedToCart: { [id: number]: boolean } = {}
  sessionId: string | null = null;
  role:string | null=null;
  foodToUpdate: Food | undefined;
  selectedImage: File | undefined;
  categories:Category[]=[]
  ingredients:Ingredient[]=[]
  @ViewChild('addCart') button!:ElementRef;

  ngOnInit(): void {
    this.getRestaurant()
    this.getFoodsbyCategory()
    console.log(this.foodsByCategory)
    this.quantity = {}
    this.sessionId = localStorage.getItem('token');
    this.role = localStorage.getItem('role')
    this.initForms();
    this.foodToUpdate = {
      id: 0,
      photo: '',
      name: '',
      price: 0,
      restaurant: this.restaurant!!,
      categorySet: [],
      ingredientsSet: []
    }
    this.foodService.getCategories().subscribe(categories=>this.categories=categories);
    this.foodService.getIngredients().subscribe(ingredients=>this.ingredients=ingredients)
  }

  constructor(private restaurantsService:RestaurantsService, 
              private foodService:FoodService,
              private route: ActivatedRoute,
              private router: Router,
              private formBuilder: FormBuilder,
              private cartService:CartService){

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
        this.quantity[food.id] = 1;
        this.isAddedToCart[food.id]=false;
      });
    });
  }

  onQuantityChange(foodId: number, quantity: number) {
    this.quantity[foodId] = quantity;
  }

  addToCart(food:Food) {
    var food_quantity = this.quantity[food.id]
    console.log(food_quantity)
    if (food_quantity == undefined) {
      food_quantity = 1
    }
    if (food_quantity > 0) {
      this.cartService.addToCart(food.id, food_quantity)
    }
    this.isAddedToCart[food.id]=true;
    this.button.nativeElement.disabled=true;
  }


  isAuthenticated(): boolean {
    return this.sessionId != null;
  }

  deleteFood(foodId:number){
    console.log('here');
    
    debugger
    this.foodService.deleteFoodFromRestaurant(foodId).subscribe(
      () => {
        this.getFoodsbyCategory();
      }
    )
  }

  edit(food:Food){
    this.foodToUpdate=food
  }

  onFileChange(event: Event) {
    const inputElement = event.target as HTMLInputElement;
    if (inputElement.files && inputElement.files.length > 0) {
      this.selectedImage = inputElement.files[0];
    }
  }

  isSelectedCategory(category: Category): boolean {
    // console.log("Kategorii:");
    // console.log(this.foodToUpdate!!.categorySet);
    // console.log(this.foodToUpdate!!.categorySet.some((c) => c.id === category.id))
    // console.log(category.id);
    return this.foodToUpdate!!.categorySet.filter(c=>c.id===category.id).length>0;
  }

  isSelectedIngredient(ingredient:Ingredient): boolean {
    // console.log("Kategorii:");
    // console.log(this.foodToUpdate!!.categorySet);
    // console.log(this.foodToUpdate!!.categorySet.some((c) => c.id === category.id))
    // console.log(category.id);
    const a=this.foodToUpdate!!.ingredientsSet.filter(c=>c.id===ingredient.id).length>0
    return a;
  }

  updateFood(){
    
  }

  
}
