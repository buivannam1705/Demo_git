package com.codegym.student.view;

import com.codegym.student.modal.Student;
import com.codegym.student.services.StudentServiceliml;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/showDelete")
public class showDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        StudentServiceliml studentServiceliml = new StudentServiceliml();
        int index = studentServiceliml.findIndex(id);
        if (index!=-1) {
            Student student = (StudentServiceliml.students).get(index);
            req.setAttribute("student" ,student);
            RequestDispatcher dispatcher= req.getRequestDispatcher("/Student/delete.jsp");
            dispatcher.forward(req,resp);
        } else {
            resp.sendRedirect("/error");
        }



    }
}
