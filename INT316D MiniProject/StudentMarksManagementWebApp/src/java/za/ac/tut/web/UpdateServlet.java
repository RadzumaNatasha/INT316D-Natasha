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
public class UpdateServlet extends HttpServlet {
@EJB LecturerFacadeLocal lfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String test = request.getParameter("test");
        Long newMarks = Long.parseLong(request.getParameter("newMarks"));
        
        Lecturer lect =CreateStudent(id,test,newMarks);
         lfl.edit(lect);
        
        RequestDispatcher disp= request.getRequestDispatcher("update_marks.jsp");
        disp.forward(request, response);
        
    }

    private Lecturer CreateStudent(Long id, String test, Long newMarks) {
    Lecturer lect =lfl.find(id);
    
    if(test.equalsIgnoreCase("st1")){
       lect.setSt1(newMarks);
    }
    else if(test.equalsIgnoreCase("st2")){
        lect.setSt2(newMarks);
    }
    else if(test.equalsIgnoreCase("quizzes")){
        lect.setQuizzes(newMarks);
    }
    else if(test.equalsIgnoreCase("class Test")){
        lect.setClassTests(newMarks);
    }
    else if(test.equalsIgnoreCase("mini Project")){
        lect.setMimiProject(newMarks);
    }
    else if(test.equalsIgnoreCase("industry Project")){
        lect.setIndustryProject(newMarks);
    }
    
    return lect;
    }

}
