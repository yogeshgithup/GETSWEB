package data;

import java.util.Objects;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Asadali
 */
public class Student {
    String guardian_contact_no;
    String parent_name;
    String parent_contact_no;
    String guardian_name;
    String course;

    public Student(String guardian_contact_no, String parent_name, String parent_contact_no, String guardian_name, String course) {
        this.guardian_contact_no = guardian_contact_no;
        this.parent_name = parent_name;
        this.parent_contact_no = parent_contact_no;
        this.guardian_name = guardian_name;
        this.course = course;
    }

    public String getGuardian_contact_no() {
        return guardian_contact_no;
    }

    public void setGuardian_contact_no(String guardian_contact_no) {
        this.guardian_contact_no = guardian_contact_no;
    }

    public String getParent_name() {
        return parent_name;
    }

    public void setParent_name(String parent_name) {
        this.parent_name = parent_name;
    }

    public String getParent_contact_no() {
        return parent_contact_no;
    }

    public void setParent_contact_no(String parent_contact_no) {
        this.parent_contact_no = parent_contact_no;
    }

    public String getGuardian_name() {
        return guardian_name;
    }

    public void setGuardian_name(String guardian_name) {
        this.guardian_name = guardian_name;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 23 * hash + Objects.hashCode(this.guardian_contact_no);
        hash = 23 * hash + Objects.hashCode(this.parent_name);
        hash = 23 * hash + Objects.hashCode(this.parent_contact_no);
        hash = 23 * hash + Objects.hashCode(this.guardian_name);
        hash = 23 * hash + Objects.hashCode(this.course);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Student other = (Student) obj;
        if (!Objects.equals(this.guardian_contact_no, other.guardian_contact_no)) {
            return false;
        }
        if (!Objects.equals(this.parent_name, other.parent_name)) {
            return false;
        }
        if (!Objects.equals(this.parent_contact_no, other.parent_contact_no)) {
            return false;
        }
        if (!Objects.equals(this.guardian_name, other.guardian_name)) {
            return false;
        }
        if (!Objects.equals(this.course, other.course)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Student{" + "guardian_contact_no=" + guardian_contact_no + ", parent_name=" + parent_name + ", parent_contact_no=" + parent_contact_no + ", guardian_name=" + guardian_name + ", course=" + course + '}';
    }
    
    
}
