package com.example.testSave.Jpa;

import com.example.testSave.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentJPA extends JpaRepository<Student,Integer> {



  List<Student> findByName(String name);






}
