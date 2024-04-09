import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { CreateStuentComponent } from './create-stuent/create-stuent.component';
import { GetStudentsComponent } from './get-students/get-students.component';
import { LoginComponent } from './login/login.component';
import { UpdateComponent } from './update/update.component';


const routes: Routes = [
  {
    path: 'create-student',
    component: CreateStuentComponent,
  },
  {
    path: 'getStudents',
    component: GetStudentsComponent,
  },
  {
    path: 'login',
    component: LoginComponent,
  },
  {
    path: 'update',
    component: UpdateComponent,
  }
  
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})


export class AppRoutingModule {

}
