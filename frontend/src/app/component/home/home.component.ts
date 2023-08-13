import { Component, OnInit } from '@angular/core';
import { Food } from 'src/app/model/food';
import { FoodService } from 'src/app/service/food.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  newFood: Food[]= [];

  constructor(
    private foodService: FoodService
  ) { }

  ngOnInit(): void {
    this.getNewFood();
  }

  getNewFood(){
    // this.foodService.getNewFood().subscribe(newFood => this.newFood = newFood);
    // return this.newFood;
  }


}
