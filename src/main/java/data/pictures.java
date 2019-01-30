/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author harshjainn
 */
public class pictures {
    String institutename;
    String imagepath;
    String imagename;

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
