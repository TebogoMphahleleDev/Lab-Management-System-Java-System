/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet(name = "ViewAllstaff", urlPatterns = {"/ViewAllstaff"})
public class ViewAllstaff extends HttpServlet {

    @EJB AdminFacadeLocal afl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        List<Admin> admin=afl.findAll();
        
        
        request.setAttribute("admin", admin);
        
        RequestDispatcher disp=request.getRequestDispatcher("view_all_staff_output.jsp");
        disp.forward(request, response);
    }

    

}
