import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, ObservableInput, catchError, throwError } from 'rxjs';
import { students } from './student';

@Injectable({
  providedIn: 'root'
})
export class StudentService {
  httpClient: any;

  
  constructor(private http: HttpClient) { }


  private  baseUrl = 'http://localhost:8080/api'; 
  // Replace with your backend API URL



  getAllStudents(): Observable<students[]> {
    return this.http.get<students[]>(this.baseUrl);
  }

  
  saveStudent(student: students) {
    return this.http.post<students>('http://localhost:8080/api/update/',student);
  }
  

  login(credentials: any): Observable<any> {
    return this.http.post<any>('http://localhost:8080/api/login',credentials, { observe: 'response' });

  }


  getEmployeeById(id: number): Observable<students> {
    return this.httpClient.get(`${this.baseUrl}${id}`);
    
  }







  updateStudent(id: number, updatedStudent: students): Observable<students> {
    const url = `${this.baseUrl}${id}`;
    const headers = new HttpHeaders({
      'Content-Type': 'application/json', // Assuming JSON data
      'Authorization': 'Bearer your-jwt-token' // If applicable
    });
    return this.http.put<students>(url, updatedStudent);
  }


  
  

  
}
