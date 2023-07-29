import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { FoodsByCategory } from 'src/app/model/foodsByCategory';
import { Restaurant } from 'src/app/model/restaurant';
import { CartService } from 'src/app/service/cart.service';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  restaurant:Restaurant | undefined;
  foodsByCategory:FoodsByCategory[]=[];
  quantity:{[id:number]:number}={}
  ngOnInit(): void {
    this.getRestaurant()
    this.getFoodsbyCategory()
    this.quantity={}
  }

  constructor(private restaurantsService:RestaurantsService, 
              private route: ActivatedRoute,
              private cartService:CartService){

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

  addToCart(foodId:number){
    console.log(foodId)
    this.cartService.addToCart(foodId,this.quantity[foodId])
  }


}
