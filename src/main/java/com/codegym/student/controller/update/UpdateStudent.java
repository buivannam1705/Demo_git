package com.codegym.student.controller.update;

import com.codegym.student.modal.Student;
import com.codegym.student.services.StudentServiceliml;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/updateStudent")
public class UpdateStudent extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id= Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String img = req.getParameter("img");
        StudentServiceliml studentServiceliml = new StudentServiceliml();

        int index = studentServiceliml.findIndex(id);
        if (id==0 || name==null || address ==null|| img==null) {

        } else {
            StudentServiceliml.students.get(index).setName(name);
            StudentServiceliml.students.get(index).setAddress(address);
            StudentServiceliml.students.get(index).setImg(img);
            resp.sendRedirect("/studentHome");
        }


    }
}
