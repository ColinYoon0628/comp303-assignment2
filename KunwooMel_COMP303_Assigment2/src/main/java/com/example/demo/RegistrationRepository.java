/*
 * Name: Mel Vincent Anonuevo & Kunwoo Yoon
 * ID#: 301167069 &
 * Date: Oct 28, 2022
 * */

package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RegistrationRepository extends JpaRepository<Registration, Integer> {
    public List<Registration> findByStudentId(int studentId);

}