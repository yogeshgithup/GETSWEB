/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Arrays;
import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class WorkingDays {
    String Day_Id;
    
    String day;

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public WorkingDays(String Day_Id, String day) {
        this.Day_Id = Day_Id;
        this.day = day;
    }
    public WorkingDays() {
    }

    public WorkingDays(String Day_Id) {
        this.Day_Id = Day_Id;
    }

  

    public String getDay_Id() {
        return Day_Id;
    }

    public void setDay_Id(String Day_Id) {
        this.Day_Id = Day_Id;
    }

   

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Objects.hashCode(this.Day_Id);
      
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
        final WorkingDays other = (WorkingDays) obj;
        if (!Objects.equals(this.Day_Id, other.Day_Id)) {
            return false;
        }
      
        return true;
    }

   
    
    
}
