/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package operation;

import data.AddAttribute;
import data.AddDesignation;
import data.AddRole;
import data.Assign_role;
import data.Course;
import data.FirstPage;
import data.Login;
import data.Person;
import data.Section;
import data.Student;
import data.Subject;
import data.pictures;
import data.user_role;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.management.relation.Role;
import javax.servlet.ServletException;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author harshjainn
 */
public class CourseSubSecOperation {

    Connection con=null;

    public CourseSubSecOperation(Connection con) {
        this.con = con;
    }

    public String insertCourse(Course c) throws SQLException {
        String msg = "hi";
        PreparedStatement pstmt = null;

        String sql = "insert into course value(?,?,?,?,?,?)";
       
        System.out.println(sql);
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, c.getC_id());
            pstmt.setString(2, c.getC_name());
            pstmt.setInt(3, c.getC_fees());
            pstmt.setInt(4, c.getDuration());
            pstmt.setInt(5, c.getHours_per_week());
            pstmt.setInt(6, c.getDays_per_week());
            pstmt.executeUpdate();
            con.commit();
            msg = "Data Entered Successfully";
        } catch (SQLException cnfe) {
            con.rollback();
            msg = cnfe.getMessage();
        }
        return msg;
    }

    
    public HashSet<pictures> getimages()
    {
        HashSet<pictures> setpictures=new HashSet<>();
         Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from pictures";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               pictures pic=new pictures(rs.getString("institutename"),rs.getString("imagepath"),rs.getString("imagename"));
               setpictures.add(pic);
           }
       }catch(Exception e)
       {
           setpictures=null;
       }
        
        return setpictures;
    }
    
    public String insertSubject(Subject s) {
        System.out.println("================in");
        String msg = "hi";
        PreparedStatement pstmtsub = null;
        PreparedStatement pstmtsubcourse = null;

        String sqlsubject = "insert into subject value(?,?,?,?)";
        String sqlsubcourse = "insert into course_subject value(?,?)";       
        HashSet<Course> setcourse;
        try {
            con.setAutoCommit(false);
            pstmtsub = con.prepareStatement(sqlsubject);
            pstmtsub.setString(1, s.getSub_id());
            pstmtsub.setString(2, s.getSub_name());
            pstmtsub.setInt(3, s.getHours_per_week());
            pstmtsub.setInt(4, s.getDays_per_week());
            pstmtsub.executeUpdate();

            setcourse = s.getSetcourse();
            Iterator<Course> it = setcourse.iterator();
            Course course = it.next();

            pstmtsubcourse = con.prepareStatement(sqlsubcourse);
            pstmtsubcourse.setString(1, course.getC_id());
            pstmtsubcourse.setString(2, s.getSub_id());
            pstmtsubcourse.executeUpdate();
            con.commit();
            msg = "Data Entered Successfully";

        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }

    public String insertSection(Section se) {

        String msg = "hi";
        PreparedStatement pstmt = null;
        PreparedStatement pstmtt = null;
        String sqlseccid = "insert into section (sec_id,sec_name,c_id)value(?,?,?)";
        String sqlsubsid = "insert into section (sec_id,sec_name,s_id)value(?,?,?)";

        try {
            con.setAutoCommit(false);
            if (se.getCourse() != null) {
                pstmt = con.prepareStatement(sqlseccid);
                pstmt.setString(1, se.getSec_id());
                pstmt.setString(2, se.getSec_name());
                Course course = se.getCourse();
                pstmt.setString(3, course.getC_id());
                pstmt.executeUpdate();
            }
            if (se.getSubject() != null) {
                pstmtt = con.prepareStatement(sqlsubsid);
                pstmtt.setString(1, se.getSec_id());
                pstmtt.setString(2, se.getSec_name());
                Subject subject = se.getSubject();
                pstmtt.setString(3, subject.getSub_id());
                pstmtt.executeUpdate();

            }
            con.commit();
            msg = "Data Entered Successfully";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }

    public String deleteCourse(String id,String id1) {

        String msg = "hi";
        PreparedStatement pstmt = null;
if(id1.equals("deletecourse"))
{
    System.out.println("insidecopdelete");
        String sql = "DELETE FROM course where c_id=?";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.commit();
            msg = "Record Deleted";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
}

if(id1.equals("deleteattribute"))
{
    System.out.println("insidecopdeleteattribute");
    
      String sql = "DELETE FROM profileattribute where pa_id=?";
        try {
            con.setAutoCommit(false);

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.commit();
            msg = "Record Deleted";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
}


if(id1.equals("deletedesignation"))
{
    System.out.println("insidecopdeletedesignation");
    
      String sql = "DELETE FROM designation where des_id=?";
        try {
            con.setAutoCommit(false);

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.commit();
            msg = "Record Deleted";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
}
    

if(id1.equals("deleterole"))
{
    System.out.println("insidecopdeleterole");
    
      String sql = "DELETE FROM role where role_id=?";
        try {
            con.setAutoCommit(false);

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.commit();
            msg = "Record Deleted";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
}

if(id1.equals("deleteimage"))
{
    System.out.println("insidecopdeleteimage");
    
      String sql = "DELETE FROM pictures where imagepath=?";
        try {
            con.setAutoCommit(false);

            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.executeUpdate();
            con.commit();
            msg = "Record Deleted";
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
}


return msg;
    }

      public HashSet<FirstPage> getfirstpage()
    {
        System.out.println("175----in");
       HashSet<FirstPage> setfirstpage=new HashSet<FirstPage>();
        System.out.println("176-------");
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from layout";
        System.out.println("181------sql"+sql);
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               FirstPage firstpage=new FirstPage(rs.getString("institutename"),rs.getString("filepath"),rs.getString("filename"),rs.getString("contactno"),rs.getString("email"),rs.getString("address"),rs.getString("aboutus"),rs.getString("quotes"));
               System.out.println("189----firstpage"+firstpage);
                       setfirstpage.add(firstpage);
                       System.out.println("191-----");
           }
       }catch(Exception e)
       {
           setfirstpage=null;
       }
        
        return setfirstpage;
    }
  
    
    
    public HashSet<Course> getCourse()
    {
        
       HashSet<Course> setcourse=new HashSet<Course>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from course";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               Course course=new Course(rs.getString("c_id"),rs.getString("c_name"),rs.getInt("c_fees"),rs.getInt("duration"),rs.getInt("hours_per_week"),rs.getInt("days_per_week"));
               setcourse.add(course);
           }
       }catch(Exception e)
       {
           setcourse=null;
       }
        
        return setcourse;
    }
    
    public HashSet<Course> getCourseId()
    {
        
        HashSet<Course> setcourse=new HashSet<Course>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select c_id  from course";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())
           {
               Course course=new Course(rs.getString("c_id"),rs.getString("c_name"),rs.getInt("c_fees"),rs.getInt("duration"),rs.getInt("hours_per_week"),rs.getInt("days_per_week"));
               setcourse.add(course);
           }
       }catch(Exception e)
       {
           setcourse=null;
       }
        
        return setcourse;
    }
    
      public String insertRole(AddRole ar) {

        String msg = "hi";
        PreparedStatement pstmt = null;
 
        String sql = "insert into role value(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, ar.getrole_id());
            pstmt.setString(2, ar.getRole());
            pstmt.executeUpdate();

            con.commit();
            msg = "Data Entered Succesfully";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }
      
      public String insertProfileAttribute(AddAttribute aa) {

        String msg = "hi";
        PreparedStatement pstmt = null;
 
        String sql = "insert into profileattribute value(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, aa.getPA_ID());
            pstmt.setString(2, aa.getProfileAttribute());
            pstmt.executeUpdate();

            con.commit();
            msg = "Data Entered Succesfully";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }
      
      public String generatepid(String op) throws SQLException
      {
          System.out.println("output-----in operation-----"+op);
              String p_id = "nill";
          if(op.equals("a"))
          {
             String sql="SELECT concat('A',max(SUBSTRING(p_id,2,2))+1) FROM person where SUBSTRING(p_id,1,1)='A'";
             Statement stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery(sql);
             while(rs.next())
             {
                    p_id=rs.getString(1);
                 if(p_id == null)
                 {
                 p_id="A1";
                 }
              }
            }
      
              if(op.equals("b"))
          {
             String sql="SELECT concat('F',max(SUBSTRING(p_id,2,2))+1) FROM person where SUBSTRING(p_id,1,1)='F'";
             Statement stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery(sql);
             while(rs.next())
             {
                    p_id=rs.getString(1);
                 if(p_id == null)
                 {
                 p_id="F1";
                 }
              }
            }
      
                if(op.equals("s"))
          {
             String sql="SELECT concat('S',max(SUBSTRING(p_id,2,2))+1) FROM person where SUBSTRING(p_id,1,1)='S'";
             Statement stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery(sql);
             while(rs.next())
             {
                    p_id=rs.getString(1);
                 if(p_id == null)
                 {
                 p_id="S1";
                 }
              }
            }
      
   return p_id;
         
      }

      public String insertinPerson(Person p) {
          System.out.println("-"+p);
        String msg = "Success";
        PreparedStatement pstmt = null,pstmtq=null;
         java.util.Date date=p.getDob();
         long sec=date.getTime();
         Date sqldate=new Date(sec);
        String sql = "insert into person values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        String sqlq="insert into qualification values(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmtq=con.prepareStatement(sqlq);
            pstmt.setString(1,p.getP_id());
            pstmt.setString(2, p.getEmail());
            pstmt.setString(3, p.getGender());
            pstmt.setDate(4,sqldate);
            
            pstmt.setString(5, p.getHome_no());
            pstmt.setString(6, p.getStreet_no());
            pstmt.setString(7, p.getStreet_name());
            pstmt.setString(8, p.getArea());
            pstmt.setString(9, p.getCity());
            pstmt.setInt(10, p.getPincode());
            pstmt.setLong(11, p.getContact_no());
            pstmt.setString(12, p.getF_name());
            pstmt.setString(13, p.getL_name());
            pstmt.setString(14, p.getM_name());
            System.out.println("272");
            pstmt.setString(15, p.getFile_path());
            System.out.println("274");
            pstmt.setString(16, p.getFile_name());
            pstmt.setString(17, p.getPassword());
            //pstmt.setString(17, p.getMime_type());
            
            pstmt.executeUpdate(); 
             String quali[]=p.getQuali();
             for(int i=0;i<quali.length;i++)
             {
                 pstmtq.setString(1,p.getP_id());
                 pstmtq.setString(2,quali[i]);
                 int r=pstmtq.executeUpdate();
             //    System.out.println("---result--"+r);
             }
            con.commit();
            msg = "Data Entered Succesfully";
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());            
        }
        return msg;
    }

    public String randompassword()
    {
          String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; 
         String Small_chars = "abcdefghijklmnopqrstuvwxyz"; 
        String numbers = "0123456789"; 
                String symbols = "@"; 
  
  
        String values = Capital_chars + Small_chars + 
                        numbers + symbols; 
  
        // Using random method 
        Random random = new Random(); 
  
        String password =""; 
  
        for (int i = 0; i < 6; i++) 
        { 
            // Use of charAt() method : to get character value 
            // Use of nextInt() as it is scanning the value as int 
            int index = random.nextInt(values.length());
        password+= values.charAt(index);
        } 
        return password;
}
     public HashSet<Person> getPerson()
    {
        
       HashSet<Person> setperson=new HashSet<Person>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from person";
       try
       {   //System.out.println("316");
           stmt=con.createStatement();
          // System.out.println("318");
           rs=stmt.executeQuery(sql);
         // System.out.println("320");
           while(rs.next())  
           {
           //    System.out.println("322");
               Person person=new Person(rs.getString("p_id"),rs.getString("email"),rs.getString("gender"),rs.getDate("dob"),rs.getString("home_no"),rs.getString("street_no"),rs.getString("street_name"),rs.getString("area"),rs.getString("city"),rs.getInt("pincode"),rs.getLong("contact_no"),rs.getString("f_name"),rs.getString("m_name"),rs.getString("l_name"),rs.getString("file_path"),rs.getString("file_name"),rs.getString("password"));
             //  System.out.println("324");
               setperson.add(person);
           }
       }catch(Exception e)
       {
         System.out.println(e.getMessage());
           setperson=null;
       }
       System.out.println("332"+setperson);
        return setperson;
    }
      public HashSet<AddRole> getRole()
    {
        
       HashSet<AddRole> setrole=new HashSet<AddRole>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from role";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               AddRole r=new AddRole (rs.getString("role_id"),rs.getString("role"));
               setrole.add(r);
           }
       }catch(Exception e)
       {
           setrole=null;
       }
        
        return setrole;
    }
       public HashSet<AddRole> getrole_id()
    {
        
       HashSet<AddRole> setrole=new HashSet<AddRole>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select role_id from role";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               AddRole r=new AddRole (rs.getString("role_id"),rs.getString("role"));
               setrole.add(r);
           }
       }catch(Exception e)
       {
           setrole=null;
       }
        
        return setrole;
    }

       
       public HashSet<Person> getp_id()
    {
        
       HashSet<Person> setperson=new HashSet<Person>();
       Statement stmt = null;
        System.out.println("");
       ResultSet rs=null;
       String sql="select p_id from person";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               Person person=new Person(rs.getString("p_id"),rs.getString("email"),rs.getString("gender"),rs.getDate("dob"),rs.getString("home_no"),rs.getString("street_no"),rs.getString("street_name"),rs.getString("area"),rs.getString("city"),rs.getInt("pincode"),rs.getInt("contact_no"),rs.getString("f_name"),rs.getString("m_name"),rs.getString("l_name"),rs.getString("file_path"),rs.getString("file_name"),rs.getString("password"));
               setperson.add(person);
           }
       }catch(Exception e)
       {
           setperson=null;
       }
        
        return setperson;
    }
      
       public String getselectedpersonfromuserrole(String pid)
       {
           String a = null;
       Statement stmt = null;
        System.out.println("");
       ResultSet rs=null;
       String sql="select * from user_role";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
          
           while(rs.next())  
           {
               String p=rs.getString("p_id");
               System.out.println("pp"+p);
               if(p.equals(pid))
               {
                    a="RoleAloted";
                   System.out.println(a);
                   break;              
          
               }
               else
               {
                   a="AlotRole";
                   System.out.println(a);        
               }
           }
       }catch(Exception e)
       {
           return(e.getMessage());
       }
           return a;
       }
       
       
       public String insertuser_role(user_role ur) {

        String msg = "success";
        PreparedStatement pstmt = null;
 
        String sql = "insert into user_role value(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, ur.getp_id());
            pstmt.setString(2, ur.getRole_id());
            pstmt.executeUpdate();

            con.commit();
            msg = "Data Entered Succesfully";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }   

         public String assign_role(Assign_role ar) {

        String msg = "success";
        PreparedStatement pstmt = null;
        PreparedStatement pstmtt= null;
           ResultSet rs;
      String role_id = null;
        String sql= "select role_id from role where role=?";
        String sqll = "insert into user_role value(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt=con.prepareStatement(sql);
            pstmtt= con.prepareStatement(sqll);
            pstmt.setString(1, ar.getRole());
             rs = pstmt.executeQuery(); 
           while (rs.next()) {                                             
              role_id=rs.getString("role_id");
               System.out.println("6534----"+role_id);
           }
       
            String p_id[]=ar.getP_id();
             for(int i=0;i<p_id.length;i++)
             {
                 pstmtt.setString(1,p_id[i]);
                 pstmtt.setString(2,role_id);
                 int r=pstmtt.executeUpdate();
             //    System.out.println("---result--"+r);
             }       
            con.commit();
            msg = "Role Assigned";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
    }   

      
      public String insertdesignation(AddDesignation obj) {

        String msg = "success";
        PreparedStatement pstmt = null;
 
        String sql = "insert into designation value(?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, obj.getAddDES_ID());
            System.out.println(obj.getDesignation());
            pstmt.setString(2, obj.getDesignation());
            pstmt.executeUpdate();
            System.out.println("suuuscsss");
            con.commit();
            msg = "Data Entered Succesfully";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg = cnfe.getMessage();
        }
        return msg;
      }    
    
      public HashSet<AddDesignation> getDesignation()
    {
        
       HashSet<AddDesignation> setdes_id=new HashSet<>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from designation";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               AddDesignation designation=new AddDesignation (rs.getString("des_id"),rs.getString("designation"));
               setdes_id.add(designation);
           }
       }catch(Exception e)
       {
           setdes_id=null;
       }
        
        return setdes_id;
    }
     
      
      public HashSet<AddDesignation> getDes_id()
    {
        
       HashSet<AddDesignation> setdes_id=new HashSet<AddDesignation>();
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select des_id from designation";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               AddDesignation designation=new AddDesignation (rs.getString("des_id"),rs.getString("designation"));
               setdes_id.add(designation);
           }
       }catch(Exception e)
       {
           setdes_id=null;
       }
        
        return setdes_id;
    }
       
       public String LoginProcess(Login l)
       {
      
           String msg="hi";
        PreparedStatement pstmt;
        PreparedStatement pstmtt;
        ResultSet rs,rs1;
        String sql = "SELECT email,password,p_id FROM person WHERE email=? and password=?";
        String sqlq="select p_id from user_role where role_id=?";
        String id = null,id1 = null;
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,l.getLoginId());
            pstmt.setString(2,l.getPassword());
            rs = pstmt.executeQuery(); 
           while (rs.next()) {                                             
               id=rs.getString("p_id");
               System.out.println("6534----"+id);
           }
           
            pstmtt= con.prepareStatement(sqlq);
            pstmtt.setString(1,"1");
            rs1 = pstmtt.executeQuery(); 
           while (rs1.next()) {               
           id1=rs1.getString("p_id");
           }
           
            System.out.println("550"+id);
            System.out.println("551"+id1);

                 if(id.equals(id1))
                 {
                     msg="Admin";
                 }
                 else if(id.contains("F"))
                 {
                     msg="Faculty";
                 }
                 else if(id.contains("S"))
                 {
                     msg="Student";
                 }
                 else
                 {
                     msg="other";
                 }
           
           con.commit();
           
            
     
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());            
        }
       
           
           return msg;
       }
       
  public String insertinlayout(FirstPage f) {
         System.out.println("hello");
        String msg = "hi";
        PreparedStatement pstmt = null;
  PreparedStatement pstmtq = null;
         System.out.println("1");
         String sql = "insert into layout value(?,?,?,?,?,?,?,?)";
        String sqlq="insert into pictures values(?,?,?)";
         System.out.println("2");
        try {
            System.out.println("cone----"+con);
            con.setAutoCommit(false);
            System.out.println("3");
            pstmt = con.prepareStatement(sql);
            pstmtq=con.prepareStatement(sqlq); 
            System.out.println("4");
            pstmt.setString(1,f.getInstitutename());
            System.out.println("6");
            pstmt.setString(2, f.getFilepath());
            System.out.println("7");
            pstmt.setString(3, f.getFilename());
            System.out.println("8");
            pstmt.setString(4,f.getContactno());
            System.out.println("9");
            pstmt.setString(5, f.getEmail());
            System.out.println("10");
            pstmt.setString(6, f.getAddress());
            System.out.println("11");
            pstmt.setString(7, f.getAboutus());
            System.out.println("12");
            pstmt.setString(8, f.getQuote());
            System.out.println("13");
            pstmt.executeUpdate();
 
            ArrayList<String> imname=f.getImagename();
            System.out.println("inname"+imname.toString());
             ArrayList<String> impath=f.getImagepath();
             System.out.println("impath"+impath.toString());
          
            for(int i=0;i<impath.size();i++)
             {
                         pstmtq.setString(1,f.getInstitutename());
                     System.out.println("poilkujyhtgrf");
                         pstmtq.setString(2,impath.get(i)); 
                     System.out.println("1234456678");
                         pstmtq.setString(3,imname.get(i));
                         System.out.println("2132thrty435ggd"); 
                           int r=pstmtq.executeUpdate();
             }

  System.out.println("14");
            System.out.println("19");
                 con.commit();
            System.out.println("20");
            msg = "Homepage Configured";
            
     
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());            
        }
       
        
 
        return msg;
    }
    
  public ArrayList<String> getAttr() {
        ArrayList ar = new ArrayList();
        
      Statement stmt = null;
       ResultSet rs=null;
       String sql="select profile_attribute from profileattribute";
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
               String pa=rs.getString("profile_attribute");
               ar.add(pa);
           }
       }catch(Exception e)
       {
           ar=null;
       }
        
      
        return ar;
    }

 public String forgotpassword(String email) throws SQLException
 {
     String password="hi";
        PreparedStatement pstmt = null;
        
        ResultSet rs;
        String sql = "SELECT password FROM person WHERE email=?";
         
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,email);
            
            rs = pstmt.executeQuery(); 
      
           while (rs.next()) {               
                               
               System.out.println("1231213--"+rs.getString("email"));
                password=rs.getString("password");
               System.out.println(rs.getString("password"));

           }
            
         con.commit();
         return password;
 }

 public String changepassword(String loginid,String newpassword)
 {
         String msg;
        PreparedStatement pstmt = null;
        System.out.println("operation--------"+loginid);
      System.out.println("operation-------"+newpassword);
        String sql = "UPDATE person SET password=? WHERE email=?";
    //  String sql="UPDATE person SET password=? WHERE password=?";  
      System.out.println(sql);
      try {
          System.out.println("784"+loginid+"  "+loginid.length());
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1,newpassword);
            pstmt.setString(2,loginid);
          System.out.println("789");
         int r = pstmt.executeUpdate();
          System.out.println(r);
          con.commit();
          msg="Password Changed Succesfully";
      }
        catch (SQLException ex) {
            Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("795"+ex.getMessage()); 
             try {
                 con.rollback();
             } catch (SQLException ex1) {
                 Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex1);
             }
            msg=ex.getMessage();

        }
        
        return msg;
     
 }
       

  
        public String insertinstudent(Student st) {

        String msg1 = "success";
        PreparedStatement pstmt = null;
 
        String sql = "insert into Student value(?,?,?,?,?)";
        try {
            con.setAutoCommit(false);
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, st.getGuardian_contact_no());
            
            pstmt.setString(2, st.getParent_name());
            pstmt.setString(3, st.getParent_contact_no());
            pstmt.setString(4, st.getGuardian_contact_no());
            pstmt.setString(5, st.getCourse());
            pstmt.executeUpdate();

            con.commit();
            msg1 = "Data Entered Succesfully";
            
        } catch (SQLException cnfe) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                Logger.getLogger(CourseSubSecOperation.class.getName()).log(Level.SEVERE, null, ex);
            }
            msg1 = cnfe.getMessage();
        }
        return msg1;
      }    


        public String editviewcourse(Course c){
   
     try{
        
         PreparedStatement pstmt = null;
            
         String sql = "UPDATE course SET c_name=?,c_fees=?,duration=?,hours_per_week=?,days_per_week=? WHERE c_id=?";
       pstmt = con.prepareStatement(sql);
       pstmt.executeUpdate();
          
       
         System.out.println("118=====op");
        return "success";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }

   
        }
    public String contactus() throws SQLException,ServletException,IOException {
     
        JSONArray ja=new JSONArray();   
              
       System.out.println("12");
           Statement stmt = null;
            System.out.println("13");
       ResultSet rs;
        System.out.println("14");
       
      
        String sql="select contactno,email,address,aboutus from layout";
           System.out.println("15");
           try
       {
           con.setAutoCommit(false);
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           System.out.println(rs);
       while(rs.next())
         
               {
     
                   JSONObject obj=new JSONObject();
       
                   System.out.println("19");
                   
                  String contactno=rs.getString("contactno");
                  
                  String email=rs.getString("email");
                   //System.out.println("21");
                  String address=rs.getString("address"); 
                   //System.out.println("22");
                  String aboutus=rs.getString("aboutus");
                
                   obj.put("contactno",contactno);
                     System.out.println("23");
                    obj.put("email",email);
                     System.out.println("24");
                    obj.put("address",address);
                     System.out.println("25");
                   obj.put("aboutus",aboutus);  
                          
                    ja.put(obj);
                 con.commit();       
            
               }
               stmt.close();
                }
           catch(Exception e)
       {
        System.out.println(e.getMessage());
       }
            System.out.println("27");
           
                  String s=ja.toString();
                 System.out.println("30");
                    return s;
         }

  

    public String androidgallery() throws SQLException,ServletException,IOException {
     JSONArray ja=new JSONArray();
        Statement stmt=null;
        ResultSet rs;
        String sql="select * from pictures";
        try
        {
              con.setAutoCommit(false);
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           System.out.println(rs);
       while(rs.next())
       {
           JSONObject obj=new JSONObject();
           
           String institutename=rs.getString("institutename");
            String imagepath=rs.getString("imagepath");
             String imagename=rs.getString("imagename");
             
             obj.put("institutename",institutename);
                 
             obj.put("imagepath",imagepath);
                 
             obj.put("imagename",imagename);
               ja.put(obj);
                 con.commit();   
       }
              stmt.close();
                }
           catch(Exception e)
       {
        System.out.println(e.getMessage());
       }
            System.out.println("27");
           
                  String s=ja.toString();
                 System.out.println("30");
                    return s;
    }
                
    public HashSet<AddAttribute> getProfileAttribute() {
     
        HashSet<AddAttribute> setAddAttribute=new HashSet<>();
        System.out.println("176-------");
       Statement stmt = null;
       ResultSet rs=null;
       String sql="select * from profileattribute";
        System.out.println("181------sql"+sql);
       try
       {
           stmt=con.createStatement();
           rs=stmt.executeQuery(sql);
           while(rs.next())  
           {
             AddAttribute aa=new AddAttribute(rs.getString("pa_id"),rs.getString("profile_attribute"));
              
               System.out.println("189----aa="+aa);
                       setAddAttribute.add(aa);
                       System.out.println("191-----");
           }
       }catch(Exception e)
       {
           setAddAttribute=null;
       }
        
        return setAddAttribute ;
    
    }

    public String updatelayout(String filepath,String filename) {
   
     try{
        
         PreparedStatement pstmt = null;
            
         String sql = "UPDATE layout SET filepath=?,filename=?";
       pstmt = con.prepareStatement(sql);
       pstmt.setString(1, filepath);
       pstmt.setString(2, filename);
       pstmt.executeUpdate();
        return "Logo Updated";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }
   
        
    }

    public String updateinstitutename(String updatedname) {
     try{
        
         PreparedStatement pstmt = null;
            
         String sql = "UPDATE layout SET institutename=?";
       pstmt = con.prepareStatement(sql);
       pstmt.setString(1, updatedname);
       pstmt.executeUpdate();
        return "Institute Name Updated";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }
   
 
    }

    public String updatequotesaboutus(String updatedquote, String updatedaboutus) {
 try{
        
         PreparedStatement pstmt = null;
            System.out.println("in========");
         String sql = "UPDATE layout SET quotes=?,aboutus=?";
       pstmt = con.prepareStatement(sql);
       System.out.println("1");
       pstmt.setString(1,updatedquote);
       System.out.println("2");
       pstmt.setString(2,updatedaboutus);
       pstmt.executeUpdate();
        return "Data Updated";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }
   
 
    }

    public String updatequotesaboutus(String updatedcontactus, String updatedemail, String updatedaddress) {
 try{
        
         PreparedStatement pstmt = null;
            System.out.println("in========");
         String sql = "UPDATE layout SET contactno=?,email=?,address=?";
       pstmt = con.prepareStatement(sql);
       pstmt.setString(1,updatedcontactus);
       pstmt.setString(2,updatedemail); 
       pstmt.setString(3,updatedaddress);
             pstmt.executeUpdate();
        return "Data Updated";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }
   

    }

       public String updatecourse(Course c) {
 try{
        
         PreparedStatement pstmt = null;
            System.out.println("in========");
         String sql = "UPDATE course SET c_name=?,c_fees=?,duration=?,hours_per_week=?,days_per_week=? where c_id=?";
       pstmt = con.prepareStatement(sql);
       System.out.println(sql);
       pstmt.setString(1,c.getC_name());
      // System.out.println(updatedc_name);
       pstmt.setInt(2,c.getC_fees()); 
      // System.out.println(updatec_fees);
       pstmt.setInt(3,c.getDuration());
       //System.out.println(updateduration);
       pstmt.setInt(4,c.getHours_per_week());
      // System.out.println(updatehours_per_week);
       pstmt.setInt(5,c.getDays_per_week());
       //System.out.println(updatedays_per_week);
       pstmt.setString(6,c.getC_id());
       //System.out.println(cid);
       pstmt.executeUpdate();
       System.out.println("12345");
        return "success";
        }catch(Exception e)
        {
            System.out.println("msg======"+e.getMessage());
            return "error";
        }
   
    }


    public String insertinpictures(pictures p, String Institutename) {
      System.out.println("hello in insert pictures");
        String msg = "hi";
  PreparedStatement pstmtq = null;
         System.out.println("1");
        String sqlq="insert into pictures values(?,?,?)";
         System.out.println("2");
        try {
            System.out.println("cone----"+con);
            con.setAutoCommit(false);
            System.out.println("3");
            pstmtq=con.prepareStatement(sqlq); 
            System.out.println("4");
 
            ArrayList<String> imname=p.getIimagename();
            System.out.println("inname"+imname.toString());
             ArrayList<String> impath=p.getIimagepath();
             System.out.println("impath"+impath.toString());
          
            for(int i=0;i<impath.size();i++)
             {
                         pstmtq.setString(1,Institutename);
                     System.out.println("poilkujyhtgrf");
                         pstmtq.setString(2,impath.get(i)); 
                     System.out.println("1234456678");
                         pstmtq.setString(3,imname.get(i));
                         System.out.println("2132thrty435ggd"); 
                           int r=pstmtq.executeUpdate();
             }

  System.out.println("14");
            System.out.println("19");
                 con.commit();
            System.out.println("20");
            msg = "Image inserted";
            
     
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());            
        }
       
        
 
        return msg;
    }
    
    

 public String adminemail(String email) throws SQLException,ServletException,IOException{
           JSONArray ja=new JSONArray();   
              
       System.out.println("12");
           PreparedStatement stmt = null;
            System.out.println("13");
       ResultSet rs;
        System.out.println("14");
       
      
        String sql="select * from person WHERE email=?";
           System.out.println("15");
           //try
       //{
           con.setAutoCommit(false);
           stmt=con.prepareStatement(sql);
           stmt.setString(1,email);
           rs =stmt.executeQuery();
           System.out.println(rs);
       while(rs.next())
         
               {
     
                   JSONObject obj=new JSONObject();
       
                   System.out.println("19");
                    String f_name=rs.getString("f_name");
                      System.out.println("20");
                   Long contact_no=rs.getLong("contact_no");
                     System.out.println("21");
                 String emailp=rs.getString("email");
                    System.out.println("22");
                     String home_no=rs.getString("home_no");
                   System.out.println("23");
                    String street_no=rs.getString("street_no");
                   System.out.println("233");
                    String street_name=rs.getString("street_name");
                   System.out.println("234");
                   String area=rs.getString("area");
                   System.out.println("235");
                   
                  String city=rs.getString("city");
                   System.out.println("236");
//                  String area=rs.getString("area"); 
//                   System.out.println("22");
//                  String city=rs.getString("city");
               
                  obj.put("f_name",f_name);
                   obj.put("contact_no",contact_no);
                     System.out.println("23");
                     obj.put("email",emailp);
                      System.out.println("24");
                      obj.put("home_no",home_no);
                      System.out.println("24");
                       obj.put("street_no",street_no);
                      System.out.println("24");
                      obj.put("street_name",street_name);
                      System.out.println("24");
                       obj.put("area",area);
                      System.out.println("24");
                    obj.put("city",city);
                     System.out.println("25");
//                    obj.put("area",area);
//                    
//                   obj.put("city",city);  
                     String address=home_no+" "+street_no+" "+street_name+" "+area+" "+city;
                   System.out.println(address);
                   obj.put("address",address);                      
                     
                    ja.put(obj);
                 con.commit();       
            
               }
              stmt.close();
                
           //catch(Exception e)
       //{
        //System.out.println(e.getMessage());
       //}
            System.out.println("27");
           
                  String s=ja.toString();
                 System.out.println(s);
                    return s;
         
    }
    
     

}