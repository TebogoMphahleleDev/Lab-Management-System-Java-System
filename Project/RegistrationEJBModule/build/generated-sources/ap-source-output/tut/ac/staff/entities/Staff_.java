package tut.ac.staff.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T21:08:26")
@StaticMetamodel(Staff.class)
public class Staff_ { 

    public static volatile SingularAttribute<Staff, Long> recordId;
    public static volatile SingularAttribute<Staff, Date> SigninDate;
    public static volatile SingularAttribute<Staff, String> surname;
    public static volatile SingularAttribute<Staff, String> initials;
    public static volatile SingularAttribute<Staff, String> labName;
    public static volatile SingularAttribute<Staff, Date> SignOutDate;
    public static volatile SingularAttribute<Staff, Long> id;

}