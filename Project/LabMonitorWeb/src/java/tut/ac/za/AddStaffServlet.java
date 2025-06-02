package tut.ac.za;

import java.io.IOException;
import java.util.Date;
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


@WebServlet(name = "AddStaffServlet", urlPatterns = {"/AddStaffServlet"})
public class AddStaffServlet extends HttpServlet {

    @EJB AdminFacadeLocal afl;
    @EJB StaffFacadeLocal stf;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Long staffno = Long.parseLong(request.getParameter("staffno"));
            String surname = request.getParameter("surname");
            String initials = request.getParameter("initials");
            String labName = request.getParameter("labName");

            if(stf.isLabOccupied(labName)) {
                throw new LabOccupiedException("Lab occupied error message");
            }

            Admin admin = afl.verifyStudentNumber(staffno);
            if(admin == null) {
                throw new ServletException("Invalid staff credentials");
            }

            // Credential validation
            if(!admin.getSurname().equalsIgnoreCase(surname)) {
                throw new InvalidCredentialsException("Invalid surname entered");
            }
            
            if(!admin.getInitials().equalsIgnoreCase(initials)) {
                throw new InvalidCredentialsException("Invalid initials entered");
            }

            Staff staff = createStaff(staffno, surname, initials, labName);
            stf.create(staff);

            request.setAttribute("staff", staff);
            RequestDispatcher disp = request.getRequestDispatcher("signin_output.jsp");
            disp.forward(request, response);

        } catch (LabOccupiedException | InvalidCredentialsException ex) {
            throw new ServletException(ex.getMessage(), ex);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid staff number format");
            request.getRequestDispatcher("signin.jsp").forward(request, response);
        }
    }

    private Staff createStaff(Long staffno, String surname, 
                             String initials, String labName) {
        Staff staff = new Staff();
        staff.setInitials(initials);
        staff.setId(staffno);
        staff.setLabName(labName);
        staff.setSurname(surname);
        staff.setSigninDate(new Date());
        return staff;
    }
}