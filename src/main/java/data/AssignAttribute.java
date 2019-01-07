/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Arrays;

/**
 *
 * @author harshjainn
 */
public class AssignAttribute {
    String p_id[];
    String profile_Attr[];

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + Arrays.deepHashCode(this.p_id);
        hash = 79 * hash + Arrays.deepHashCode(this.profile_Attr);
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
        final AssignAttribute other = (AssignAttribute) obj;
        if (!Arrays.deepEquals(this.p_id, other.p_id)) {
            return false;
        }
        if (!Arrays.deepEquals(this.profile_Attr, other.profile_Attr)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "AssignAttribute{" + "p_id=" + p_id + ", profile_Attr=" + profile_Attr + '}';
    }

    public AssignAttribute() {
    }

    public String[] getP_id() {
        return p_id;
    }

    public void setP_id(String[] p_id) {
        this.p_id = p_id;
    }

    public String[] getProfile_Attr() {
        return profile_Attr;
    }

    public void setProfile_Attr(String[] profile_Attr) {
        this.profile_Attr = profile_Attr;
    }
    
    
}
