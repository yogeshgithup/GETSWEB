/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.ArrayList;

/**
 *
 * @author harshjainn
 */
public class pictures {
    String institutename;
    String imagepath;
    String imagename;
 
    ArrayList<String> iimagepath;
    ArrayList<String> iimagename;

    public ArrayList<String> getIimagepath() {
        return iimagepath;
    }

    public void setIimagepath(ArrayList<String> iimagepath) {
        this.iimagepath = iimagepath;
    }

    public ArrayList<String> getIimagename() {
        return iimagename;
    }

    public void setIimagename(ArrayList<String> iimagename) {
        this.iimagename = iimagename;
    }

    public pictures(String institutename, String imagepath, String imagename) {
        this.institutename = institutename;
        this.imagepath = imagepath;
        this.imagename = imagename;
    }

    public pictures() {
    }

    public String getInstitutename() {
        return institutename;
    }

    public void setInstitutename(String institutename) {
        this.institutename = institutename;
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

 
    
    
}
