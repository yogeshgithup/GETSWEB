package data;

import java.util.Objects;

public class AddRole {
    private String role_id;
    private String role;

    public AddRole(String addrole_id, String role) {
        this.role_id = addrole_id;
        this.role = role;
    }

  
    public String getrole_id() {
        return role_id;
    }

    public String getRole() {
        return role;
    }

    public void setAddrole_id(String addrole_id) {
        this.role_id = addrole_id;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "AddRole{" + "addrole_id=" + role_id + ", role=" + role + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.role_id);
        hash = 37 * hash + Objects.hashCode(this.role);
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
        final AddRole other = (AddRole) obj;
        if (!Objects.equals(this.role_id, other.role_id)) {
            return false;
        }
        if (!Objects.equals(this.role, other.role)) {
            return false;
        }
        return true;
    }
    
    
    
    
}
