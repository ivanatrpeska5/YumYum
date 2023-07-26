import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { RegisterForm } from '../model/registerForm';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  model: any = {};
  sessionId: any = "";

  constructor(private router: Router,
    private http: HttpClient) { }

  login(model:any) {
    let url = '/api/login';
    this.model=model
    this.http.post<any>(url, {
      username: this.model.username,
      password: this.model.password
    }).subscribe(res => {
      if (res) {
        this.sessionId = res.sessionId;

        sessionStorage.setItem(
          'token',
          this.sessionId
        );
        this.router.navigate(['']);
      } else {
        alert("Authentication failed.")
      }
    });
  }
  logout() {
    let url = '/api/logout';
    this.http.post<any>(url, {
      sessionId: this.sessionId
    }).subscribe(res => {
      if (res) {
        sessionStorage.removeItem('token')
        this.router.navigate(['login']);
      } else {
        alert("Cannot logout")
      }
    });
  }

  register(formData:RegisterForm){
    let url = '/api/register';
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
