/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Arrays;
import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class AssignDesignation {
       private String p_id[];
   private String designation;

    public AssignDesignation() {
    }

    public AssignDesignation(String designation) {
        this.designation = designation;
    }

    
    public String[] getP_id() {
        return p_id;
    }

    public void setP_id(String[] p_id) {
        this.p_id = p_id;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Arrays.deepHashCode(this.p_id);
        hash = 17 * hash + Objects.hashCode(this.designation);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final AssignDesignation other = (AssignDesignation) obj;
        if (!Arrays.deepEquals(this.p_id, other.p_id)) {
            return false;
        }
        if (!Objects.equals(this.designation, other.designation)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "AssignDesignation{" + "designation=" + designation + '}';
    }

    
}
