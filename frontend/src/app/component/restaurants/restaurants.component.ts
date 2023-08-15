import { Component, OnInit } from '@angular/core';
import {
  Observable,
  Subject,
  debounceTime,
  distinctUntilChanged,
  startWith,
  switchMap,
} from 'rxjs';
import { Restaurant } from 'src/app/model/restaurant';
import { RestaurantsService } from 'src/app/service/restaurants.service';

@Component({
  selector: 'app-restaurants',
  templateUrl: './restaurants.component.html',
  styleUrls: ['./restaurants.component.css'],
})
export class RestaurantsComponent implements OnInit {
  restaurants$!: Observable<Restaurant[]>;
  private searchTerms = new Subject<string>();

  ngOnInit(): void {
    this.getRestaurants();
  }

  constructor(private restaurantsService: RestaurantsService) {}

  search(term: string): void {
    this.searchTerms.next(term);
  }

  getRestaurants() {
    this.restaurants$ = this.searchTerms.pipe(
      startWith(''),
      debounceTime(300),

      distinctUntilChanged(),

      switchMap((term: string) =>
        this.restaurantsService.searchRestaurants(term)
      )
    );
  }
}
