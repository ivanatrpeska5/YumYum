import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { RegisterForm } from '../model/registerForm';
import { of, switchMap } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  model: any = {};
  constructor(
    private router: Router,
    private activatedRoute: ActivatedRoute,
    private http: HttpClient
  ) {}

  login(model: any) {
    let url = '/api/login';
    this.http
      .post<any>(url, {
        username: model.username,
        password: model.password,
      })
      .pipe(
        switchMap((res) => {
          if (res) {
            localStorage.setItem('token', res.sessionId);
            localStorage.setItem('role', res.role);
            localStorage.setItem('username', model.username);
            localStorage.setItem('restaurantId', res.restaurantId);
          } else {
            alert('Authentication failed.');
          }
          return of(res);
        })
      )
      .subscribe((res) => {
        this.router.navigate(['']).then(() => {
          window.location.reload();
        });
      });
  }
  logout() {
    let url = '/api/logout';
    this.http
      .post<any>(url, {
        sessionId: localStorage.getItem('token'),
      })
      .subscribe((res) => {
        if (res) {
          localStorage.removeItem('token');
          localStorage.removeItem('role');
          localStorage.removeItem('username');
          localStorage.removeItem('restaurantId');
          window.location.href = '/login';
        } else {
          alert('Cannot logout');
        }
      });
  }

  register(formData: RegisterForm) {
    let url = '/api/register';

    this.http.post<any>(url, formData).subscribe(
      (response) => {},
      (error) => {}
    );
  }
}
