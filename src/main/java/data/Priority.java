/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Objects;

/**
 *
 * @author Asadali
 */
public class Priority {
    String priority;
    String p_id;

    public Priority() {
    }

    public Priority(String priority, String p_id) {
        this.priority = priority;
        this.p_id = p_id;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + Objects.hashCode(this.priority);
        hash = 29 * hash + Objects.hashCode(this.p_id);
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
        final Priority other = (Priority) obj;
        if (!Objects.equals(this.priority, other.priority)) {
            return false;
        }
        if (!Objects.equals(this.p_id, other.p_id)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Priority{" + "priority=" + priority + ", p_id=" + p_id + '}';
    }
    
}
