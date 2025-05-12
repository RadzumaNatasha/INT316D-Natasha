/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ronal
 */
public class ChooseRoleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String role = request.getParameter("role");
       String url = "";
       
       if(role.equals("lct")){
           url ="lecturer.html";
       }
       else if(role.equals("sdt")){
           url ="Student.html";
       }else{
           url="home.html";
       }
       
       
       request.getRequestDispatcher(url).forward(request, response);
    }

}
