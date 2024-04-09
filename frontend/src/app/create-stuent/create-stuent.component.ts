import { Component } from '@angular/core';
import { FormBuilder, FormGroup, NgForm } from '@angular/forms';
import { StudentService } from '../student.service';
import { Router } from '@angular/router';
import { students } from '../student';

@Component({
  selector: 'app-create-stuent',
  templateUrl: './create-stuent.component.html',
  styleUrls: ['./create-stuent.component.scss']
})
export class CreateStuentComponent {
  
  student:students=new students();
  profileForm!: FormGroup;
  submitted = false;
 

  constructor(private studentService:StudentService,
    private router:Router,private formBuilder:FormBuilder){
      this.profileForm=this.formBuilder.group(
        {
        name:[''],   
        password:[''],
      
        }
      )
      
  }

  name:string='';
  password:string='';


  ngOnInit(): void {
    
  }



  onSubmit() {
    this.submitted = true;
    this.studentService.saveStudent(this.profileForm.value)
      .subscribe(savedStudent => {
        console.log(this.profileForm.value);
        console.log('Student saved successfully!', savedStudent);
        
        // Handle successful save (e.g., reset form, show confirmation message)
      }, error => {
        console.error('Error saving student:', error);
        // Handle errors (e.g., display error message to user)
      });
  }

  // Getter for form validity (optional)
  get diagnostic() { return JSON.stringify(this.student); 

  }



}


