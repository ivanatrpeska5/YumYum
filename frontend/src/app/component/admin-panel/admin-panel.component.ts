import { Component, OnInit } from "@angular/core";
import { StatisticsService } from "../../service/statistics.service";

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrls: ['./admin-panel.component.css'],
})
export class AdminPanelComponent implements OnInit {
  ordersByRestaurant: any;
  ordersByCategory: any;
  ordersOverTimeByRestaurant: any;

  constructor(private readonly statisticsService: StatisticsService) {
  }

  ngOnInit(): void {
    this.statisticsService.getOrdersByRestaurant().subscribe(
      value => {
        this.ordersByRestaurant = value
      }
    )
    this.statisticsService.getOrdersByCategory().subscribe(
      value => {
        this.ordersByCategory = value
      }
    )
    this.statisticsService.getOrdersOverTimeByRestaurant().subscribe(
      value => {
        this.ordersOverTimeByRestaurant = value
      }
    )
  }

  dataNC = salesPerRestaurant;
  viewNC: [number, number] = [800, 150];
  animationsNC = true;
  cardColor = '#232837';

  currencyFormatterNC(moneyAmount: any): string {
    const currencyFormat = new Intl.NumberFormat("en-US", {
      style: "currency",
      currency: "USD",
    });
    return currencyFormat.format(moneyAmount.value);
  }

  numberOfOrdersTooltip(data: any): string {
    if (data.value)
      return data.value + " orders";
    else if (data)
      return data + " orders";
    else
      return "error"
  }

}


export const salesPerRestaurant = [
  {
    name: "Royal",
    value: 128169,
  },
  {
    name: "Bistro",
    value: 94794,
  },
  {
    name: "BurgerKing",
    value: 87688,
  },
  {
    name: "Trend",
    value: 85358,
  },
  {
    name: "KFC",
    value: 68309,
  },
];
