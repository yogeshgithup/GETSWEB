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
public class AddAttribute {
 String PA_ID;
 String ProfileAttribute;

    public AddAttribute(String PA_ID, String ProfileAttribute) {
        this.PA_ID = PA_ID;
        this.ProfileAttribute = ProfileAttribute;
    }

    public String getPA_ID() {
        return PA_ID;
    }

    public String getProfileAttribute() {
        return ProfileAttribute;
    }

    public void setPA_ID(String PA_ID) {
        this.PA_ID = PA_ID;
    }

    public void setProfileAttribute(String ProfileAttribute) {
        this.ProfileAttribute = ProfileAttribute;
    }

    @Override
    public String toString() {
        return "AddAttribute{" + "PA_ID=" + PA_ID + ", ProfileAttribute=" + ProfileAttribute + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.PA_ID);
        hash = 37 * hash + Objects.hashCode(this.ProfileAttribute);
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
        final AddAttribute other = (AddAttribute) obj;
        if (!Objects.equals(this.PA_ID, other.PA_ID)) {
            return false;
        }
        if (!Objects.equals(this.ProfileAttribute, other.ProfileAttribute)) {
            return false;
        }
        return true;
    }
 
 
}
