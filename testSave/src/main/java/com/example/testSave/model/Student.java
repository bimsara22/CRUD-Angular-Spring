package com.example.testSave.model;

import jakarta.persistence.*;

@Entity
@Table(name = "studentDB1")
public class Student {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name = "id",updatable = false,nullable = false)
        private Integer id;

        @Column(name = "name")
        private String name;


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Column
        private String password;

        public Student(Integer id, String name) {
            this.id = id;
            this.name = name;
        }

        public Student() {}

        public Student(String name) {
            this.name = name;
        }

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }
    }

