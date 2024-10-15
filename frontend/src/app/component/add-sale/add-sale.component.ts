import { Component, OnInit } from "@angular/core";
import { NewSale } from "../../model/newSale";
import { FoodService } from "../../service/food.service";
import { Food } from "../../model/food";

@Component({
  selector: 'app-add-sale',
  templateUrl: './add-sale.component.html',
  styleUrls: ['./add-sale.component.css'],
})
export class AddSaleComponent implements OnInit {

  newSale: NewSale = {
    dateFrom: new Date(),
    dateTo: new Date(),
    percentage: 0,
    foodId: 0
  }

  foods: Food[] = [];

  constructor(
    private foodService: FoodService
  ) {}

  ngOnInit() {
    this.foodService.getFoodsFromMyRestaurant().subscribe(
      val => {
        this.foods = val;
      }
    )
  }

  onSubmit() {
    this.foodService.addSale(this.newSale).subscribe()
  }
}
