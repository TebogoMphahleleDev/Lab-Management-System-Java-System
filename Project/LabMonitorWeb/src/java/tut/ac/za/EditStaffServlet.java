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
@WebServlet(name = "EditStaffServlet", urlPatterns = {"/EditStaffServlet"})
public class EditStaffServlet extends HttpServlet {

    
    @EJB AdminFacadeLocal afl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            Long originalAdminId = Long.parseLong(request.getParameter("originalStaffNo"));
            String surname = request.getParameter("surname");
            String initials = request.getParameter("initials");
            
            
            Admin updatedAdmin = new Admin();
            updatedAdmin.setId(originalAdminId); 
            updatedAdmin.setSurname(surname);
            updatedAdmin.setInitials(initials);
            
            
            afl.editAdmin(originalAdminId, updatedAdmin);
            
            RequestDispatcher disp=request.getRequestDispatcher("edit_staff_output.jsp");
            disp.forward(request, response);
        
    }

    

}
