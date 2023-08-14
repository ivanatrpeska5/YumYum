import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { RegisterForm } from '../model/registerForm';
import { BehaviorSubject } from 'rxjs';

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
  constructor(private router: Router,
    private http: HttpClient) { }

  login(model:any) {
    let url = '/api/login';
    //this.model=model
    this.http.post<any>(url, {
      username: model.username,
      password: model.password
    }).subscribe(res => {
      if (res) {
        this.sessionID.next(res.sessionId);
        this.ROLE.next(res.role);
        localStorage.setItem('token',res.sessionId);
        localStorage.setItem("role",res.role);
        localStorage.setItem("username",model.username);
        console.log(localStorage.getItem("role"))
        this.router.navigate(['']);
      } else {
        alert("Authentication failed.")
      }
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
        this.sessionID.next(null);
        this.ROLE.next(null);
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
