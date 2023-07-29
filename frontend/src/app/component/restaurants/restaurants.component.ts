import { Component, OnInit } from '@angular/core';
import { Restaurant } from 'src/app/model/restaurant';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurants',
  templateUrl: './restaurants.component.html',
  styleUrls: ['./restaurants.component.css']
})
export class RestaurantsComponent implements OnInit {

  restaurants:Restaurant[] | undefined;

  ngOnInit(): void {
    this.getRestaurants()
  }

  constructor(private restaurantsService:RestaurantsService){

  }

  getRestaurants(){
    this.restaurantsService.getRestaurants().subscribe(restaurants=>{
      this.restaurants=restaurants
    })
  }
  

}
