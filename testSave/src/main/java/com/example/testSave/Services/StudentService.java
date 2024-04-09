package com.example.testSave.Services;

import com.example.testSave.Jpa.StudentJPA;
import com.example.testSave.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentService {

    @Autowired
    public StudentJPA studentJPA;

    public Student saveStudent(Student student){
        Student student1=this.studentJPA.saveAndFlush(student);
        return student1;
    }

    public List<Student> getAllStudent(){
        List<Student>students =this.studentJPA.findAll();
        return students;
    }


    public boolean authenticate(String name, String password) {
        List<Student> student = studentJPA.findByName(name);
        return student != null && student.get(0).getPassword().equals(password);
    }


    public Student updateStudent(Integer id, Student updatedStudent) {
        Student existingStudent = studentJPA.findById(id).orElse(null);
        if (existingStudent != null) {
            existingStudent.setName(updatedStudent.getName());
            existingStudent.setPassword(updatedStudent.getPassword());
            return studentJPA.save(existingStudent);
        }
        return null; // Student not found
    }





    public boolean deleteStudent(Integer id) {
        if (studentJPA.existsById(id)) {
            studentJPA.deleteById(id);
            return true;
        }
        return false; // Student not found or deletion failed
    }



//    public Optional<Student> getStudentById(Integer id) {
//        return studentJPA.findById(id);
//    }


    public Optional<Student> getStudentByID(Integer id){
        Optional<Student> student=this.studentJPA.findById(id);
        return student;
    }


}
