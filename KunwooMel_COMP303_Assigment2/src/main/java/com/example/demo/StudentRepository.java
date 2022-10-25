package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface StudentRepository extends JpaRepository<Student, Integer>{
    public List<Student> findByUserName(String username);
}
