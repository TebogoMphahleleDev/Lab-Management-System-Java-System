/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za.bl;

import java.util.List;
import javax.ejb.Local;
import tut.ac.za.Admin;

/**
 *
 * @author T-man
 */
@Local
public interface AdminFacadeLocal {

    void create(Admin admin);

    void edit(Admin admin);

    void remove(Admin admin);

    Admin find(Object id);

    List<Admin> findAll();

    List<Admin> findRange(int[] range);

    int count();

    Admin verifyStudentNumber(Long staffno);
    
    Admin findByAdminId(Long adminId);
    
    void editAdmin(Long originalAdminId, Admin updatedAdmin);

    Admin removeStaffAdmin(Long staffno);
}
