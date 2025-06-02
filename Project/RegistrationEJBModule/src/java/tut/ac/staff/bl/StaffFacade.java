/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.staff.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import tut.ac.staff.entities.Staff;

/**
 *
 * @author T-man
 */
@Stateless
public class StaffFacade extends AbstractFacade<Staff> implements StaffFacadeLocal {

    @PersistenceContext(unitName = "RegistrationEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StaffFacade() {
        super(Staff.class);
    }
    
    @Override
    public Staff findByStaffNo(Long staffNo) {
        Query query =em.createQuery("SELECT s FROM Staff s WHERE s.id = :staffNo");
        query.setParameter("staffNo", staffNo);
        Staff staff=(Staff) query.getSingleResult();
        return staff;
    }
    
    @Override
    public void editStaff(Long originalStaffNo, Staff updatedStaff) 
    {
        Staff existingStaff = findByStaffNo(originalStaffNo);
        
            
            existingStaff.setId(updatedStaff.getId());
            existingStaff.setSurname(updatedStaff.getSurname());
            existingStaff.setInitials(updatedStaff.getInitials());
            existingStaff.setLabName(updatedStaff.getLabName());
            
            em.merge(existingStaff);
        
    }

    @Override
    public List<Staff> openLabs() {
    Query query = em.createQuery("SELECT s FROM Staff s WHERE s.SignOutDate IS NULL");
    List<Staff> stafflabs = query.getResultList();
    return stafflabs;
}

    @Override
   public boolean isLabOccupied(String labName) {
   
    String query = "SELECT COUNT(s) FROM Staff s WHERE s.labName = :labName AND s.SignOutDate IS NULL";

    Long count = em.createQuery(query, Long.class)
                   .setParameter("labName", labName)
                   .getSingleResult();

    return count > 0;
}

    
    
    
}
