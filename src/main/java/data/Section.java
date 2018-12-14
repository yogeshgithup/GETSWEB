
package data;

import java.util.Objects;


public class Section {
  private String sec_id;
    private String sec_name;
   Course course;
   Subject subject;

    public Section(String sec_id, String sec_name) {
        this.sec_id = sec_id;
        this.sec_name = sec_name;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + Objects.hashCode(this.sec_id);
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
        final Section other = (Section) obj;
        if (!Objects.equals(this.sec_id, other.sec_id)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Section{" + "sec_id=" + sec_id + ", sec_name=" + sec_name + ", course=" + course + ", subject=" + subject + '}';
    }


   public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }
   

    public String getSec_id() {
        return sec_id;
    }

    public String getSec_name() {
        return sec_name;
    }


    public void setSec_id(String sec_id) {
        this.sec_id = sec_id;
    }

    public void setSec_name(String sec_name) {
        this.sec_name = sec_name;
    }
     
}
