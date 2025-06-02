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
import tut.ac.staff.bl.StaffFacadeLocal;
import tut.ac.staff.entities.Staff;

/**
 *
 * @author T-man
 */
@WebServlet(name = "OpenLabs", urlPatterns = {"/OpenLabs"})
public class OpenLabs extends HttpServlet {
    
    @EJB StaffFacadeLocal stf;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Staff> openLabs=stf.openLabs();
        
        request.setAttribute("openLabs", openLabs);
        
        RequestDispatcher disp=request.getRequestDispatcher("all_open_labs_output.jsp");
        disp.forward(request, response);
    }

    

}
