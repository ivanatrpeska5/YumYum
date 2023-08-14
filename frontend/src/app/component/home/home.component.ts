import { Component, OnInit } from '@angular/core';
import { Food } from 'src/app/model/food';
import { Restaurant } from 'src/app/model/restaurant';
import { FoodService } from 'src/app/service/food.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  newFood: Food[]= [];
  topRestaurants: Restaurant[] = [];
  constructor(
    private foodService: FoodService,
    private restaurantsService: RestaurantsService
  ) { }

  ngOnInit(): void {
    this.getNewFood();
    this.getTopRestaurants();
  }

  getNewFood(){
    this.foodService.getNewFood().subscribe(newFood => this.newFood = newFood);
    return this.newFood;
  }

  getTopRestaurants(){
    this.restaurantsService.getTopRestaurants().subscribe(
      restaurants => this.topRestaurants = restaurants
    )
  }


}
