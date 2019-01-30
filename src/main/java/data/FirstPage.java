/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.ArrayList;

/**
 *
 * @author Asadali
 */
public class FirstPage {

    String institutename;
    String filepath;
    String filename;
    String contactno;
    String email;
    String address;
    String aboutus;
    String quote;
    
    ArrayList<String> imagepath;
    ArrayList<String> imagename;

    public ArrayList<String> getImagepath() {
        return imagepath;
    }

    public void setImagepath(ArrayList<String> imagepath) {
        this.imagepath = imagepath;
    }

    public ArrayList<String> getImagename() {
        return imagename;
    }

    public void setImagename(ArrayList<String> imagename) {
        this.imagename = imagename;
    }

  
   
    public void setInstitutename(String institutename) {
        this.institutename = institutename;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setAboutus(String aboutus) {
        this.aboutus = aboutus;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }

   
    public String getInstitutename() {
        return institutename;
    }

    public String getFilepath() {
        return filepath;
    }

    public String getFilename() {
        return filename;
    }

    public String getContactno() {
        return contactno;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getAboutus() {
        return aboutus;
    }

    public String getQuote() {
        return quote;
    }

    
    public FirstPage(String institutename, String filepath, String filename, String contactno, String email, String address, String aboutus, String quote) {
        this.institutename = institutename;
        this.filepath = filepath;
        this.filename = filename;
        this.contactno = contactno;
        this.email = email;
        this.address = address;
        this.aboutus = aboutus;
        this.quote = quote;
    }
    
}
