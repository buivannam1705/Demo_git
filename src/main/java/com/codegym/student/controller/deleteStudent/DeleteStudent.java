package com.codegym.student.controller.deleteStudent;

import com.codegym.student.modal.Student;
import com.codegym.student.services.StudentServiceliml;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns = "/deleteStudent")
public class DeleteStudent extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int  id = Integer.parseInt(req.getParameter("id"));
        StudentServiceliml studentServiceliml = new StudentServiceliml();
        int index =studentServiceliml.findIndex(id);
        if (index!=-1) {
            StudentServiceliml.students.remove(index);
            resp.sendRedirect("/studentHome");
        } else {
            resp.sendRedirect("/error");
        }
    }
}
