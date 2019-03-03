
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.util.Date;
import java.util.HashSet;
import java.util.Objects;

/**
 *
 * @author harshjainn
 */
public class BatchSlotMaster {
   String Slot_Id;
    String Start_Time;
    String End_Time;

    public String getSlot_Id() {
        return Slot_Id;
    }

    public void setSlot_Id(String Slot_Id) {
        this.Slot_Id = Slot_Id;
    }

    public BatchSlotMaster(String Slot_Id, String Start_Time, String End_Time) {
        this.Slot_Id = Slot_Id;
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
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

    public BatchSlotMaster(String Start_Time, String End_Time) {
        this.Start_Time = Start_Time;
        this.End_Time = End_Time;
    }

    public BatchSlotMaster() {
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 47 * hash + Objects.hashCode(this.Start_Time);
        hash = 47 * hash + Objects.hashCode(this.End_Time);
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
        final BatchSlotMaster other = (BatchSlotMaster) obj;
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
        return "BatchSlotMaster{" + "Start_Time=" + Start_Time + ", End_Time=" + End_Time + '}';
    }
  
    
    
}
