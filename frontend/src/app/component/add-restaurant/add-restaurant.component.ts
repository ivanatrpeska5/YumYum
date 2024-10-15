import {Component} from '@angular/core';

@Component({
  selector: 'add-restaurant',
  templateUrl: './add-restaurant.component.html',
  styleUrls: ['./add-restaurant.component.scss']
})

export class AddRestaurantComponent {
  selectedCar: number[] = [];

  cars = [
    {id: 1, name: 'Volvo'},
    {id: 2, name: 'Saab'},
    {id: 3, name: 'Opel'},
    {id: 4, name: 'Audi'},
  ];
  selected: any;
  public foods: any[] = [
    {value: 'steak-0', viewValue: 'Steak'},
    {value: 'pizza-1', viewValue: 'Pizza'},
    {value: 'tacos-2', viewValue: 'Tacos'},
  ];
}
