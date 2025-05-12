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
public class getPredicateServlert extends HttpServlet {
@EJB  LecturerFacadeLocal lfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
 
         Lecturer lecturer = lfl.find(id);
                    
                    String initials = lecturer.getInitials();
                    Long st1 =lecturer.getSt1();
                    Long st2 = lecturer.getSt2();
                    Long quizzes = lecturer.getQuizzes();
                    Long classTests =lecturer.getClassTests();
                    Long miniProject =lecturer.getMimiProject();
                    Long industryProject =lecturer.getIndustryProject();
                    
                    
                    
                    Double predicate = CreatePredicate(st1,st2,quizzes,classTests,miniProject,industryProject);
                    request.setAttribute("id", id);
                    request.setAttribute("initials", initials);
                    request.setAttribute("st1", st1);
                    request.setAttribute("st2", st2);
                    request.setAttribute("quizzes", quizzes);
                    request.setAttribute("classTests", classTests);
                    request.setAttribute("miniProject",miniProject);
                    request.setAttribute("industryProject", industryProject);
                    request.setAttribute("predicate", predicate);
                    
                    RequestDispatcher disp = request.getRequestDispatcher("view_Predicate.jsp");
                    disp.forward(request, response);
        
    }

    private Double CreatePredicate(Long st1, Long st2, Long quizzes, Long classTests, Long miniProject, Long industryProject) {
    Double predicate;
    
    
    predicate=(st1*0.2)+(st2 *0.25)+(quizzes *0.15) +(classTests * 0.2)+(miniProject* 0.05)+(industryProject *0.15);
    
    return predicate;
    }

    

}
