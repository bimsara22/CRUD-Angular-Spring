import { Component } from '@angular/core';
import { StudentService } from '../student.service';
import { students } from '../student';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {

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



  login() {
    this.studentService.login(Credential)
      .subscribe(response => {
        if (response.status === 200) {
          console.log('Login successful!');
          // Login successful
          console.log(response.body); // This will log "Login successful!"
        } else {
          // Invalid credentials
          console.error(response.body); // This will log "Invalid credentials!"
        }
      }, error => {
        console.error('Error:', error);
      });
  }

}
