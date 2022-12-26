package com.codegym.student.controller.createStudent;

import com.codegym.student.modal.Student;
import com.codegym.student.services.StudentServiceliml;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/createStudent")
public class CreateStudent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String img = req.getParameter("img");

        if (id==0 || name==null || address ==null|| img==null) {
            resp.sendRedirect("/viewCreate");
        } else {
            StudentServiceliml.students.add(new Student(id,name,address,img));
            resp.sendRedirect("/studentHome");
        }


    }
}
