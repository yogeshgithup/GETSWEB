/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data; 

import java.util.Objects;


public class AddDesignation {
  
    private String AddDES_ID;
    private String  Designation;

    @Override
    public String toString() {
        return "AddDesignation{" + "AddDES_ID=" + AddDES_ID + ", Designation=" + Designation + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 17 * hash + Objects.hashCode(this.AddDES_ID);
        hash = 17 * hash + Objects.hashCode(this.Designation);
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
        final AddDesignation other = (AddDesignation) obj;
        if (!Objects.equals(this.AddDES_ID, other.AddDES_ID)) {
            return false;
        }
        if (!Objects.equals(this.Designation, other.Designation)) {
            return false;
        }
        return true;
    }

    public void setAddDES_ID(String AddDES_ID) {
        this.AddDES_ID = AddDES_ID;
    }

    public void setDesignation(String Designation) {
        this.Designation = Designation;
    }

    public String getAddDES_ID() {
        return AddDES_ID;
    }

    public String getDesignation() {
        return Designation;
    }

    public AddDesignation(String AddDES_ID, String Designation) {
        this.AddDES_ID = AddDES_ID;
        this.Designation = Designation;
    }

}
