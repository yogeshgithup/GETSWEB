/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Date;
import java.util.HashSet;
import java.util.Objects;

public class Person {
    String quali[];
    private String p_id;
    private String email;
    private String gender;
    private Date dob;
    private String home_no;
    private String street_no;
    private String street_name;
    private String area;
    private String city;
    private int pincode;
    private long contact_no;
    private String f_name;
    private String m_name;
    private String l_name;
    private String file_path;
    private String file_name;
    private String password; 
    HashSet<FirstPage> setfirstpage;
    public String[] getQuali() {

        return quali;
    }

    public void setQuali(String[] quali) {
        this.quali = quali; 
    }
    
    public HashSet<FirstPage> getSetfirstpage() {
        return setfirstpage;
    }

    public void setSetfirstpage(HashSet<FirstPage> setfirstpage) {
        this.setfirstpage = setfirstpage;
    }

    public Person(String p_id,String email, String gender, Date dob, String home_no, String street_no, String street_name, String area, String city, int pincode, long contact_no, String f_name, String m_name, String l_name, String file_path, String file_name, String password) {
        this.p_id= p_id;
        this.email = email;
        this.gender = gender;
        this.dob = dob;
        this.home_no = home_no;
        this.street_no = street_no;
        this.street_name = street_name;
        this.area = area;
        this.city = city;
        this.pincode = pincode;
        this.contact_no = contact_no;
        this.f_name = f_name;
        this.m_name = m_name;
        this.l_name = l_name;
        this.file_path = file_path;
        this.file_name = file_name;
        this.password = password;
    }

    public String getP_id() {
        return p_id;
    }

    public void setP_id(String p_id) {
        this.p_id = p_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getHome_no() {
        return home_no;
    }

    public void setHome_no(String home_no) {
        this.home_no = home_no;
    }

    public String getStreet_no() {
        return street_no;
    }

    public void setStreet_no(String street_no) {
        this.street_no = street_no;
    }

    public String getStreet_name() {
        return street_name;
    }

    public void setStreet_name(String street_name) {
        this.street_name = street_name;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public long getContact_no() {
        return contact_no;
    }

    public void setContact_no(long contact_no) {
        this.contact_no = contact_no;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getFile_path() {
        return file_path;
    }

    public void setFile_path(String file_path) {
        this.file_path = file_path;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 79 * hash + Objects.hashCode(this.p_id);
        hash = 79 * hash + Objects.hashCode(this.email);
        hash = 79 * hash + Objects.hashCode(this.gender);
        hash = 79 * hash + Objects.hashCode(this.dob);
        hash = 79 * hash + Objects.hashCode(this.home_no);
        hash = 79 * hash + Objects.hashCode(this.street_no);
        hash = 79 * hash + Objects.hashCode(this.street_name);
        hash = 79 * hash + Objects.hashCode(this.area);
        hash = 79 * hash + Objects.hashCode(this.city);
        hash = 79 * hash + this.pincode;
        hash = (int) (79 * hash + (this.contact_no));
        hash = 79 * hash + Objects.hashCode(this.f_name);
        hash = 79 * hash + Objects.hashCode(this.m_name);
        hash = 79 * hash + Objects.hashCode(this.l_name);
        hash = 79 * hash + Objects.hashCode(this.file_path);
        hash = 79 * hash + Objects.hashCode(this.file_name);
        hash = 79 * hash + Objects.hashCode(this.password);
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
        final Person other = (Person) obj;
        if (this.pincode != other.pincode) {
            return false;
        }
        if (this.contact_no != other.contact_no) {
            return false;
        }
        if (!Objects.equals(this.p_id, other.p_id)) {
            return false;
        }
        if (!Objects.equals(this.email, other.email)) {
            return false;
        }
        if (!Objects.equals(this.gender, other.gender)) {
            return false;
        }
        if (!Objects.equals(this.home_no, other.home_no)) {
            return false;
        }
        if (!Objects.equals(this.street_no, other.street_no)) {
            return false;
        }
        if (!Objects.equals(this.street_name, other.street_name)) {
            return false;
        }
        if (!Objects.equals(this.area, other.area)) {
            return false;
        }
        if (!Objects.equals(this.city, other.city)) {
            return false;
        }
        if (!Objects.equals(this.f_name, other.f_name)) {
            return false;
        }
        if (!Objects.equals(this.m_name, other.m_name)) {
            return false;
        }
        if (!Objects.equals(this.l_name, other.l_name)) {
            return false;
        }
        if (!Objects.equals(this.file_path, other.file_path)) {
            return false;
        }
        if (!Objects.equals(this.file_name, other.file_name)) {
            return false;
        }
        if (!Objects.equals(this.password, other.password)) {
            return false;
        }
        if (!Objects.equals(this.dob, other.dob)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Person{" + "p_id=" + p_id + ", email=" + email + ", gender=" + gender + ", dob=" + dob + ", home_no=" + home_no + ", street_no=" + street_no + ", street_name=" + street_name + ", area=" + area + ", city=" + city + ", pincode=" + pincode + ", contact_no=" + contact_no + ", f_name=" + f_name + ", m_name=" + m_name + ", l_name=" + l_name + ", file_path=" + file_path + ", file_name=" + file_name + ", password=" + password + '}';
    }

}