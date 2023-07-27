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
  
  constructor(private authService:AuthService){

  }
  ngOnInit(): void {
    this.role=sessionStorage.getItem("role")
  }
  logout(){
    this.authService.logout()
  }
}
