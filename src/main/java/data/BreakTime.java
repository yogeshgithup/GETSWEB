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
public class BreakTime {
    String Break_Id;
    String Start_Time;
    String End_Time;

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 29 * hash + Objects.hashCode(this.Break_Id);
        hash = 29 * hash + Objects.hashCode(this.Start_Time);
        hash = 29 * hash + Objects.hashCode(this.End_Time);
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
        final BreakTime other = (BreakTime) obj;
        if (!Objects.equals(this.Break_Id, other.Break_Id)) {
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
        return "BreakTime{" + "Break_Id=" + Break_Id + ", Start_Time=" + Start_Time + ", End_Time=" + End_Time + '}';
    }

    public BreakTime(String Start_Time, String End_Time) {
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public BreakTime(String Break_Id, String Start_Time, String End_Time) {
        this.Break_Id = Break_Id;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public BreakTime() {
    }

    public String getBreak_Id() {
        return Break_Id;
    }

    public void setBreak_Id(String Break_Id) {
        this.Break_Id = Break_Id;
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
    
    
    
}
