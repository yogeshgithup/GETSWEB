/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class WorkingShifts {
    String Ws_Id;
    String Working_Hours;
    String Start_Time;
    String End_Time;

    public WorkingShifts() {
    }

    public WorkingShifts(String Working_Hours, String Start_Time, String End_Time) {
        this.Working_Hours = Working_Hours;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public WorkingShifts(String Ws_Id, String Working_Hours, String Start_Time, String End_Time) {
        this.Ws_Id = Ws_Id;
        this.Working_Hours = Working_Hours;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public String getWs_Id() {
        return Ws_Id;
    }

    public void setWs_Id(String Ws_Id) {
        this.Ws_Id = Ws_Id;
    }

    public String getWorking_Hours() {
        return Working_Hours;
    }

    public void setWorking_Hours(String Working_Hours) {
        this.Working_Hours = Working_Hours;
    }

    public String getStart_Time() {
        return Start_Time;
    }

    public void setStart_Time(String Start_Time) {
        this.Start_Time = Start_Time;
    }

    public String getEnd_Time() {
        return End_Time;
    }

    public void setEnd_Time(String End_Time) {
        this.End_Time = End_Time;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 53 * hash + Objects.hashCode(this.Ws_Id);
        hash = 53 * hash + Objects.hashCode(this.Working_Hours);
        hash = 53 * hash + Objects.hashCode(this.Start_Time);
        hash = 53 * hash + Objects.hashCode(this.End_Time);
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
        final WorkingShifts other = (WorkingShifts) obj;
        if (!Objects.equals(this.Ws_Id, other.Ws_Id)) {
            return false;
        }
        if (!Objects.equals(this.Working_Hours, other.Working_Hours)) {
            return false;
        }
        if (!Objects.equals(this.Start_Time, other.Start_Time)) {
            return false;
        }
        if (!Objects.equals(this.End_Time, other.End_Time)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "WorkingShifts{" + "Ws_Id=" + Ws_Id + ", Working_Hours=" + Working_Hours + ", Start_Time=" + Start_Time + ", End_Time=" + End_Time + '}';
    }

    
    
}
