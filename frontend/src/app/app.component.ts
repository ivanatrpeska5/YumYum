import { Component, OnChanges, OnInit, SimpleChanges } from '@angular/core';
import { AuthService } from './service/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent implements OnInit {
  title = 'Yum Yum';
  role: string | null = null;
  sessionId: string | null = null;
  username: string | null = null;
  restaurantId: number | null = null;

  constructor(private authService: AuthService) {}
  ngOnInit(): void {
    this.role=localStorage.getItem('role');
    this.sessionId=localStorage.getItem("token")
    this.username=localStorage.getItem('username')
    this.restaurantId=Number(localStorage.getItem('restaurantId'))
    
  }
  logout() {
    this.authService.logout();
    this.role = null;
    this.sessionId = null;
    this.username = null;
    this.restaurantId = null;
  }

  isAuthorized(): boolean {
    return this.sessionId != null;
  }
}
