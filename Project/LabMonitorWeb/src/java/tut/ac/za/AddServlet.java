/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tut.ac.za.bl.AdminFacadeLocal;

/**
 *
 * @author T-man
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/AddServlet"})
public class AddServlet extends HttpServlet {

    @EJB AdminFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long staffno=Long.parseLong(request.getParameter("staffno"));
        String surname=request.getParameter("surname");
        String initials=request.getParameter("initials");
        
        
        Admin admin=new Admin(staffno, surname, initials);
        afl.create(admin);
        
        
        
        RequestDispatcher disp=request.getRequestDispatcher("add_output.jsp");
        disp.forward(request, response);
        
    }

    
}
