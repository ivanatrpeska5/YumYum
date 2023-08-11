import { Component, OnInit } from '@angular/core';
import { Observable, Subject, debounceTime, distinctUntilChanged, switchMap } from 'rxjs';
import { Restaurant } from 'src/app/model/restaurant';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurants',
  templateUrl: './restaurants.component.html',
  styleUrls: ['./restaurants.component.css']
})
export class RestaurantsComponent implements OnInit {

  restaurants$!:Observable<Restaurant[]>;
  private searchTerms = new Subject<string>();

  ngOnInit(): void {
    this.getRestaurants()
    console.log(sessionStorage.getItem('token'))
  }

  constructor(private restaurantsService:RestaurantsService){

  }

  search(term: string): void {
    this.searchTerms.next(term);
  }

  getRestaurants(){
    this.restaurants$ = this.searchTerms.pipe(
      // wait 300ms after each keystroke before considering the term
      debounceTime(300),

      // ignore new term if same as previous term
      distinctUntilChanged(),

      // switch to new search observable each time the term changes
      switchMap((term: string) => this.restaurantsService.searchRestaurants(term)),
    );
  }
  

}
