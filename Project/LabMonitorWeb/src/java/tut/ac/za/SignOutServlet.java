/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
import tut.ac.za.bl.AdminFacadeLocal;

/**
 *
 * @author T-man
 */
@WebServlet(name = "SignOutServlet", urlPatterns = {"/SignOutServlet"})
public class SignOutServlet extends HttpServlet {

    @EJB AdminFacadeLocal afl;
    @EJB StaffFacadeLocal stf;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        
        Long staffno = Long.parseLong(request.getParameter("staffno"));
      
        Staff staf = stf.find(staffno);
        
        if (staf != null) {
            staf.setSignOutDate(new Date());
            stf.edit(staf);
        }
         List<Staff> staffList = stf.findAll(); // Make sure to re-fetch updated data
        request.setAttribute("staff", staffList);
        
        RequestDispatcher disp=request.getRequestDispatcher("signout_output.jsp");
        disp.forward(request, response);
        
        
    }
    

    
}
