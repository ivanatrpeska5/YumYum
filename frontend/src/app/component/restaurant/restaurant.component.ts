import { Component, OnInit } from '@angular/core';
import { FormArray, FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { FoodsByCategory } from 'src/app/model/foodsByCategory';
import { Restaurant } from 'src/app/model/restaurant';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  restaurant:Restaurant | undefined;
  foodsByCategory:FoodsByCategory[]=[];
  restaurantForm!: FormGroup;

  ngOnInit(): void {
    this.getRestaurant()
    this.getFoodsbyCategory()
  }

  constructor(private restaurantsService:RestaurantsService, private route: ActivatedRoute, private formBuilder: FormBuilder){

  }

  createFoodForm(foodId: number): FormGroup {
    return this.formBuilder.group({
      foodId: [foodId],
      quantity: ['1', Validators.required],
    });
  }

  getRestaurant(){
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService.getRestaurant(id).subscribe(restaurant=>{
      this.restaurant=restaurant
    })
  }

  getFoodsbyCategory(){
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService.getFoodsByCategory(id).subscribe(foodsByCategory=>{
      this.foodsByCategory=foodsByCategory
    })
  }

  private getFoodFormArray(): FormArray {
    return this.restaurantForm.get('foodForms') as FormArray;
  }
  
  addToCart(foodId:Number){
      const formArray = this.getFoodFormArray();
      const foodForm = formArray.controls.find((control) => control.get('foodId')!!.value === foodId);
      const formData = this.restaurantForm.value;
      const quantity = formData.quantity;
      console.log(foodId)
      console.log(quantity)
  }

}
