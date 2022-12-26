package com.codegym.student.services;

import com.codegym.student.modal.Student;

import java.util.List;

public interface StudentServiceInterface {
    List<Student> findAll();

    void save(Student students);

    void findById(int id);

    void update(int id,Student students);

    void remove(int id);
}
