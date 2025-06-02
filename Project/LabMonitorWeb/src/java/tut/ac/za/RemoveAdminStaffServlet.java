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
import tut.ac.staff.bl.StaffFacadeLocal;
import tut.ac.za.bl.AdminFacadeLocal;

/**
 *
 * @author T-man
 */
@WebServlet(name = "RemoveAdminStaffServlet", urlPatterns = {"/RemoveAdminStaffServlet"})
public class RemoveAdminStaffServlet extends HttpServlet {

    @EJB AdminFacadeLocal afl;
    @EJB StaffFacadeLocal stf;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long staffno=Long.parseLong(request.getParameter("staffno"));
        
        //Admin admin=afl.removeStaffAdmin(staffno);
        
        Admin admin=afl.find(staffno);
        afl.remove(admin);
        
        request.setAttribute("staffno", staffno);
        
        RequestDispatcher disp=request.getRequestDispatcher("remove_admin_staff_output.jsp");
        disp.forward(request, response);
        
    }

    

}
