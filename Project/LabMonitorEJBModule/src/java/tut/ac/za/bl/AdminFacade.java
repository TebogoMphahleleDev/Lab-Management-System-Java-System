/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.za.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import tut.ac.za.Admin;

/**
 *
 * @author T-man
 */
@Stateless
public class AdminFacade extends AbstractFacade<Admin> implements AdminFacadeLocal {

    @PersistenceContext(unitName = "LabMonitorEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminFacade() {
        super(Admin.class);
    }

    @Override
    public Admin verifyStudentNumber(Long staffno) {
        
        Query query=em.createQuery(
        "SELECT a FROM Admin a WHERE a.id=:staffno");
        query.setParameter("staffno", staffno);
        
        Admin admin=(Admin) query.getSingleResult();
        return admin;
    }
    
    @Override
    public Admin findByAdminId(Long adminId) {
        
        Query query=em.createQuery("SELECT a FROM Admin a WHERE a.id = :adminId");
        query.setParameter("adminId", adminId);
        Admin admin=(Admin) query.getSingleResult();
        return admin;
        
    }
    
    public void editAdmin(Long originalAdminId, Admin updatedAdmin) {
        Admin existingAdmin = findByAdminId(originalAdminId);
        if (existingAdmin != null) 
        {
            
            existingAdmin.setSurname(updatedAdmin.getSurname());
            existingAdmin.setInitials(updatedAdmin.getInitials());
            em.merge(existingAdmin);
        }
    }

    @Override
    public Admin removeStaffAdmin(Long staffno) {
        Query query=em.createQuery(
        "SELECT a FROM Admin a WHERE a.id=:staffno");
        query.setParameter("staffno", staffno);
        Admin admin=(Admin) query.getSingleResult();
        return admin;
    }
    
     
    
    
}
