/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class Assign_role {
     private String p_id[];
   private String role;

    public Assign_role() {
    }

    public Assign_role(String role) {
        this.role = role;
    }

    public String[] getP_id() {
        return p_id;
    }

    public void setP_id(String[] p_id) {
        this.p_id = p_id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + Objects.hashCode(this.role);
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
        final Assign_role other = (Assign_role) obj;
        if (!Objects.equals(this.role, other.role)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Assign_role{" + "role=" + role + '}';
    }
   
   
}
