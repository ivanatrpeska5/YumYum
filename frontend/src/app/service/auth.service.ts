import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { RegisterForm } from '../model/registerForm';
import { BehaviorSubject, of, switchMap } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  model: any = {};
 // sessionId: string | null=null;
  //role: string | null=null;
  private sessionID= new BehaviorSubject(null);
  private ROLE=new BehaviorSubject(null);
  currentSessionId=this.sessionID.asObservable();
  currentRole=this.ROLE.asObservable();
  currentUsername=new BehaviorSubject(null);
  currentRestaurantId=new BehaviorSubject(null);
  constructor(private router: Router, private activatedRoute: ActivatedRoute,
    private http: HttpClient) { }

  login(model:any) {
    let url = '/api/login';
    //this.model=model
    this.http.post<any>(url, {
      username: model.username,
      password: model.password
    }).pipe(
      switchMap(
      (res) => {
      if (res) {
        this.sessionID.next(res.sessionId);
        this.ROLE.next(res.role);
        this.currentUsername.next(model.username);
        this.currentRestaurantId.next(res.restaurantId);
        localStorage.setItem('token',res.sessionId);
        localStorage.setItem("role",res.role);
        localStorage.setItem("username",model.username);
        localStorage.setItem("restaurantId",res.restaurantId);
      } else {
        alert("Authentication failed.")
      }
      return of(res);
    })).subscribe(res => {
      this.router.navigate(['']);

    });
  }
  logout() {
    let url = '/api/logout';
    this.http.post<any>(url, {
      sessionId: localStorage.getItem('token')
    }).subscribe(res => {
      if (res) {
        localStorage.removeItem('token')
        localStorage.removeItem('role');
        localStorage.removeItem('username');
        localStorage.removeItem('restaurantId');
        this.sessionID.next(null);
        this.ROLE.next(null);
        this.currentUsername.next(null);
        this.currentRestaurantId.next(null);
        this.router.navigate(['login']);
      } else {
        alert("Cannot logout")
      }
    });
  }

  register(formData:RegisterForm){
    let url = '/api/register';
    console.log("restaurant id:",formData.restaurantId)
    this.http
      .post<any>(url, formData)
      .subscribe(
        (response) => {
          console.log('Post successful!', response);
          // Handle the response from the server if needed
        },
        (error) => {
          console.error('Error:', error);
          // Handle any errors that occurred during the post request
        }
      );
  }
}
