
package data;

import java.util.HashSet;
import java.util.Objects;

public class Subject {
    private String sub_id;
    private String sub_name;
    private Integer hours_per_week;
    private Integer days_per_week;
     private HashSet<Course> setcourse;
   private HashSet<Section> setsection;

    public Subject() {
    }

    public HashSet<Section> getSetsection() {
        return setsection;
    }

    public void setSetsection(HashSet<Section> setsection) {
        this.setsection = setsection;
    }

    public String getSub_id() {
        return sub_id;
    }

    public void setSub_id(String sub_id) {
        this.sub_id = sub_id;
    }

    public String getSub_name() {
        return sub_name;
    }

    public void setSub_name(String sub_name) {
        this.sub_name = sub_name;
    }

    public Integer getHours_per_week() {
        return hours_per_week;
    }

    public void setHours_per_week(Integer hours_per_week) {
        this.hours_per_week = hours_per_week;
    }

    public Integer getDays_per_week() {
        return days_per_week;
    }

    public void setDays_per_week(Integer days_per_week) {
        this.days_per_week = days_per_week;
    }

    public HashSet<Course> getSetcourse() {
        return setcourse;
    }

    public void setSetcourse(HashSet<Course> setcourse) {
        this.setcourse = setcourse;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 41 * hash + Objects.hashCode(this.sub_id);
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
        final Subject other = (Subject) obj;
        if (!Objects.equals(this.sub_id, other.sub_id)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Subject{" + "sub_id=" + sub_id + ", sub_name=" + sub_name + ", hours_per_week=" + hours_per_week + ", days_per_week=" + days_per_week + ", setcourse=" + setcourse + '}';
    }

    public Subject(String sub_id, String sub_name, Integer hours_per_week, Integer days_per_week, HashSet<Course> setcourse) {
        this.sub_id = sub_id;
        this.sub_name = sub_name;
        this.hours_per_week = hours_per_week;
        this.days_per_week = days_per_week;
        this.setcourse = setcourse;
    }
  
}
