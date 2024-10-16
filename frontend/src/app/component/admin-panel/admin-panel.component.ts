import { Component, OnInit } from "@angular/core";
import { StatisticsService } from "../../service/statistics.service";
import { Color } from "@swimlane/ngx-charts";

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrls: ['./admin-panel.component.css'],
})
export class AdminPanelComponent implements OnInit {
  ordersByRestaurant: any;
  ordersByCategory: any;
  ordersOverTimeByRestaurant: any;
  revenueByRestaurant: any;

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
    this.statisticsService.getRevenueByRestaurant().subscribe(
      value => {
        this.revenueByRestaurant = value
      }
    )
  }

  colorScheme = {
    domain: ['#5AA454', '#E44D25', '#CFC0BB', '#7aa3e5', '#a8385d', '#aae3f5']
  } as Color;
  cardColor: string = '#232837';

  currencyFormatter(moneyAmount: any): string {
    const currencyFormat = new Intl.NumberFormat("mk-MK", {
      style: "currency",
      currency: "MKD",
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
