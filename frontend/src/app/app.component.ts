import { Component, OnInit } from '@angular/core';
import { AuthService } from './service/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'Yum Yum';
  role:string | null=null;
  sessionId: string | null = null;
  username:string | null=null;
  restaurantId:number | null=null;

  constructor(private authService:AuthService){

  }
  ngOnInit(): void {
    //this.role=sessionStorage.getItem("role")
    //this.sessionId=sessionStorage.getItem("token")
    this.authService.currentRole.subscribe(role=>this.role=role)
    this.authService.currentSessionId.subscribe(sessionId=>{this.sessionId=sessionId;})
    this.authService.currentUsername.subscribe(username=>this.username=username)
    this.authService.currentRestaurantId.subscribe(restaurantId=>this.restaurantId=restaurantId)
  }
  logout(){
    console.log(this.role)
    this.authService.logout()
   // this.authService.currentRole.subscribe(role=>this.role=role)
    //this.authService.currentSessionId.subscribe(sessionId=>this.sessionId=sessionId)
    console.log(this.role)
    //this.sessionId=null;
  }

  isAuthorized():boolean{
    return this.sessionId!=null;
  }


}
