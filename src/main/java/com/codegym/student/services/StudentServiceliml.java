package com.codegym.student.services;

import com.codegym.student.modal.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceliml implements StudentServiceInterface{
    public static List<Student> students = new ArrayList<>();

    static {
        students.add(new Student(1,"Tiến","Bắc Ninh","https://play-lh.googleusercontent.com/7Ac5TgaL15Ra4bvFVHJKCdJp4qvnL4djZj5bKc6RN-MZjzrvkeHbJytek0NPTSdZcp8"));
    }

    @Override
    public List<Student> findAll() {
        return students;
    }

    @Override
    public void save(Student student) {
        students.add(student);
    }

    @Override
    public void findById(int id) {
        int index = findIndex(id);
        if (index>=0) {
            students.get(index);
        }
    }

    public int findIndex( int id) {
        for (int i = 0; i < students.size(); i++) {
            if (students.get(i).getId()==id){
                return i;
            }
        }
        return -1;
    }

    @Override
    public void update(int id, Student student) {
        students.add(student);
    }

    @Override
    public void remove(int id) {
        int index = findIndex(id);
            students.remove(index);
    }
}
