/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Lecturer;
import za.ac.tut.entities.MarksQuery;
import za.ac.tut.entities.bl.LecturerFacadeLocal;
import za.ac.tut.entities.bl.MarksQueryFacadeLocal;

/**
 *
 * @author ronal
 */
public class AddQueryServlert extends HttpServlet {
@EJB MarksQueryFacadeLocal mfl;
private LecturerFacadeLocal lfl; 


   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        Long id =Long.parseLong(request.getParameter("id"));
        String query =request.getParameter("query");
        
        
        Lecturer lect = lfl.find(id);
        String initials = lect.getInitials();
        
        
        MarksQuery mark = MakeQuery(id,query,initials);
        mfl.create(mark);
        
        
        RequestDispatcher disp =request.getRequestDispatcher("add_query_outcome.jsp");
        disp.forward(request, response);
                
    }

    public MarksQuery MakeQuery(Long id, String query, String initials) {
      MarksQuery mark = new MarksQuery();
      mark.setId(id);
      mark.setInitials(initials);
      mark.setDescription(query);
      return mark;
    }

    

}
