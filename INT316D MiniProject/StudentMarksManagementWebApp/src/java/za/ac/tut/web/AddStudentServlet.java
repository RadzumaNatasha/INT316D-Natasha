/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Lecturer;
import za.ac.tut.entities.bl.LecturerFacadeLocal;

/**
 *
 * @author ronal
 */
public class AddStudentServlet extends HttpServlet {
@EJB LecturerFacadeLocal lfl;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String initials = request.getParameter("initials");
        Long st1 = Long.parseLong(request.getParameter("st1"));
        Long st2 = Long.parseLong(request.getParameter("st2"));
        Long quizzes = Long.parseLong(request.getParameter("quizzes"));
        Long classTests = Long.parseLong(request.getParameter("classTests"));
        Long miniProject = Long.parseLong(request.getParameter("miniProject"));
        Long industryProject = Long.parseLong(request.getParameter("industryProject"));
        
        Lecturer lect = CreateStudent(id,initials,st1,st2,quizzes,miniProject,industryProject,classTests);
        lfl.create(lect);
        
        RequestDispatcher disp =request.getRequestDispatcher("add_student_outcome.jsp");
        disp.forward(request, response);
    }

    private Lecturer CreateStudent(Long id, String initials, Long st1, Long st2, Long quizzes, Long miniProject, Long industryProject, Long classTests) {
        Lecturer lect = new Lecturer();
        lect.setId(id);
        lect.setInitials(initials);
        lect.setSt1(st1);
        lect.setSt2(st2);
        lect.setMimiProject(miniProject);
        lect.setIndustryProject(industryProject);
        lect.setQuizzes(quizzes);
        lect.setClassTests(classTests);
        return lect;
    }


}
