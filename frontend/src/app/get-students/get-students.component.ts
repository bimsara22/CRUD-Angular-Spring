import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';

@Component({
  selector: 'app-get-students',
  templateUrl: './get-students.component.html',
  styleUrls: ['./get-students.component.scss']
})
export class GetStudentsComponent {
  
  students:any;

  constructor(private http: HttpClient) { 

   
  }

  ngOnInit(): void {
    this.getStudents();
  }

  getStudents() {
    this.http.get<any[]>('http://localhost:8080/api/getstudents')
      .subscribe((data: any) => {
        this.students = data;
        console.log("hello");
      });
  }




}
