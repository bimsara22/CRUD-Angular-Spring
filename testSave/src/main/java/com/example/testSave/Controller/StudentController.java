package com.example.testSave.Controller;

import com.example.testSave.Services.StudentService;
import com.example.testSave.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class StudentController {


    @Autowired
    private StudentService studentService;

    @CrossOrigin(origins = "http://localhost:58607")
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public Student saveStudent(@RequestBody Student student) {
        Student savedStudent = studentService.saveStudent(student);
        return savedStudent;
    }


    @CrossOrigin(origins = "http://localhost:58607")
    @RequestMapping(value = "/student1",method = RequestMethod.GET)
    public String saveStudent() {
        System.out.println("hello");
        return "hello";
    }



    @CrossOrigin(origins = "http://localhost:58607")
    @RequestMapping(value = "/getstudents",method = RequestMethod.GET)
    public List<Student> getAllEmployee(){
        List<Student> students =studentService.getAllStudent();
        return students;


    }

//    @CrossOrigin(origins = "http://localhost:4200")
//    @RequestMapping(value = "/getById/{}",method = RequestMethod.GET)
//    public Optional<Student>  getStudentById(@PathVariable Integer id){
//        Optional<Student> student =studentService.getStudentById(id);
//        return student;
//
//    }

    @RequestMapping("/getStudentID/{id}")
    public Optional<Student>getStudentByID(@PathVariable Integer id){
        Optional<Student> student=studentService.getStudentByID(id);
        return student;

    }






    @CrossOrigin(origins = "http://localhost:58607")
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestBody UserLoginRequest userLoginRequest) {
        String name = userLoginRequest.getName();
        String password = userLoginRequest.getPassword();
        boolean isAuthenticated = studentService.authenticate(name,password);
        if (isAuthenticated) {
            return "Login successful!";
        } else {
            return "Invalid credentials!";
        }
    }

    static class UserLoginRequest {
        private String name;

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        private String password;

    }


    @CrossOrigin(origins = "http://localhost:58607")
    @RequestMapping (value = "/update/{id}",method = RequestMethod.PUT)
    public ResponseEntity<Student> updateStudent(@PathVariable Integer id, @RequestBody Student updatedStudent) {
        Student student = studentService.updateStudent(id, updatedStudent);
        if (student != null) {
            return new ResponseEntity<>(student, HttpStatus.OK) {
            };
        } else {
            HttpStatus notFound = HttpStatus.NOT_FOUND;
            return null;
        }
    }



    @RequestMapping (value = "/delete/{id}",method = RequestMethod.DELETE)
    public ResponseEntity<String> deleteStudent(@PathVariable Integer id) {
        boolean deleted = studentService.deleteStudent(id);
        if (deleted) {

            //below statement Message Show in Header part of postman
//            return ResponseEntity.noContent().header("Message", "Student with ID " + id + " has been deleted").build(); // Deletion successful

            String message = "Student with ID " + id + " has been deleted";
            return ResponseEntity.ok().body(message);

        } else {
            String errorMessage = "Student with ID " + id + " not found or deletion failed";
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(errorMessage); // Student not found or deletion failed
        }

}










}













