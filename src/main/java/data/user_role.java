/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Objects;


public class user_role {
   private String p_id;
   private String role_id;

    public user_role(String p_id, String role_id) {
        this.p_id = p_id;
        this.role_id = role_id;
    }

    public String getp_id() {
        return p_id;
    }

    public void setp_id(String p_id) {
        this.p_id = p_id;
    }

    public String getRole_id() {
        return role_id;
    }

    public void setRole_id(String role_id) {
        this.role_id = role_id;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + Objects.hashCode(this.p_id);
        hash = 37 * hash + Objects.hashCode(this.role_id);
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
        final user_role other = (user_role) obj;
        if (!Objects.equals(this.p_id, other.p_id)) {
            return false;
        }
        if (!Objects.equals(this.role_id, other.role_id)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "user_role{" + "p_id=" + p_id + ", role_id=" + role_id + '}';
    }
   
}
