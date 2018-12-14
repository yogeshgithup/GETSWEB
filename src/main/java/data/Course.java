/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class Course implements Serializable{
    private String c_id;
    private String c_name;
    private int c_fees;
    private int duration;
    private int hours_per_week;
    private int days_per_week;
    private HashSet<Subject> setsubject;
   private HashSet<Section> setsection;

    public HashSet<Section> getSetsection() {
        return setsection;
    }

    public void setSetsection(HashSet<Section> setsection) {
        this.setsection = setsection;
    }

    public void setSetsubject(HashSet<Subject> setsubject) {
        this.setsubject = setsubject;
    }

    public HashSet<Subject> getSetsubject() {
        return setsubject;
    }
   
    public String getC_id() {
        return c_id;
    }

    public void setC_id(String c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public int getC_fees() {
        return c_fees;
    }

    public void setC_fees(int c_fees) {
        this.c_fees = c_fees;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public int getHours_per_week() {
        return hours_per_week;
    }

    public void setHours_per_week(int hours_per_week) {
        this.hours_per_week = hours_per_week;
    }

    public int getDays_per_week() {
        return days_per_week;
    }

    public void setDays_per_week(int days_per_week) {
        this.days_per_week = days_per_week;
    }

    public Course(String c_id, String c_name, int c_fees, int Duration, int hours_per_week, int days_per_week) {
        this.c_id = c_id;
        this.c_name = c_name;
        this.c_fees = c_fees;
        this.duration = duration;
        this.hours_per_week = hours_per_week;
        this.days_per_week = days_per_week;
    }

    public Course() {
    }

    @Override
    public String toString() {
        return "Course{" + "c_id=" + c_id + ", c_name=" + c_name + ", c_fees=" + c_fees + ", duration=" + duration + ", hours_per_week=" + hours_per_week + ", days_per_week=" + days_per_week + '}';
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 47 * hash + Objects.hashCode(this.c_id);
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
        final Course other = (Course) obj;
        if (!Objects.equals(this.c_id, other.c_id)) {
            return false;
        }
        return true;
    }
    
    
}
