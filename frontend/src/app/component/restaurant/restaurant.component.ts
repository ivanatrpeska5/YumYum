import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Restaurant } from 'src/app/model/restaurant';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurant',
  templateUrl: './restaurant.component.html',
  styleUrls: ['./restaurant.component.css']
})
export class RestaurantComponent implements OnInit {

  restaurant:Restaurant | undefined;

  ngOnInit(): void {
    this.getRestaurant()
  }

  constructor(private restaurantsService:RestaurantsService, private route: ActivatedRoute){

  }

  getRestaurant(){
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.restaurantsService.getRestaurant(id).subscribe(restaurant=>{
      this.restaurant=restaurant
    })
  }

}
