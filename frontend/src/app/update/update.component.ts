import { Component } from '@angular/core';
import { StudentService } from '../student.service';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { students } from '../student';

@Component({
  selector: 'app-update',
  templateUrl: './update.component.html',
  styleUrls: ['./update.component.scss']
})
export class UpdateComponent {

  student:students=new students();
  profileForm!: FormGroup;
  submitted = false;
  route: any;
 

  constructor(private studentService:StudentService,
    private router:Router,private formBuilder:FormBuilder){
      this.profileForm=this.formBuilder.group(
        {
          id:[''],	
        name:[''],   
        password:[''],
      
        }
      )
      
  }


  ngOnInit() {
    this.student.id = this.route.snapshot.params['id'];
  
    this.studentService.getEmployeeById(this.student.id).subscribe(data=>{
      this.student=data;
    },error=>console.log(error));



  }


  
  



  onUpdate(){
    const updatedStudent: students = this.profileForm.value;
    this.studentService.updateStudent(this.profileForm.value.id,updatedStudent)
    .subscribe(data => {
      console.log(this.profileForm.value);
      console.log('Student updated successfully!', data);
      this.gotoStudentList();
    },
    error => {
      console.error('Error updating student:', error);
    });
}

gotoStudentList() {
  this.router.navigate(['/getStudents']); // Navigate to student list route
}




  }

