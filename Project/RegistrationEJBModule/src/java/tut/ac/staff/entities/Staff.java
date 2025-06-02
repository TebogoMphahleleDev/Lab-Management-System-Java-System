/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tut.ac.staff.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author T-man
 */
@Entity
public class Staff implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO) 
    private Long recordId; 
    
    @Column(name="STAFFNO")
    private Long id;
    
    private String surname;
    
    private String initials;
    
    private String labName;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date SigninDate;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date SignOutDate;

    public Staff() {
    }

    public Staff(Long id, String surname, String initials, String labName, Date SigninDate, Date SignOutDate) {
        this.id = id;
        this.surname = surname;
        this.initials = initials;
        this.labName = labName;
        this.SigninDate = SigninDate;
        this.SignOutDate = SignOutDate;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getInitials() {
        return initials;
    }

    public void setInitials(String initials) {
        this.initials = initials;
    }

    public String getLabName() {
        return labName;
    }

    public void setLabName(String labName) {
        this.labName = labName;
    }

    public Date getSigninDate() {
        return SigninDate;
    }

    public void setSigninDate(Date SigninDate) {
        this.SigninDate = SigninDate;
    }

    public Date getSignOutDate() {
        return SignOutDate;
    }

    public void setSignOutDate(Date SignOutDate) {
        this.SignOutDate = SignOutDate;
    }

    public Long getRecordId() {
        return recordId;
    }

    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }
    
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Staff)) {
            return false;
        }
        Staff other = (Staff) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "tut.ac.staff.entities.Staff[ id=" + id + " ]";
    }
    
    
    
}
