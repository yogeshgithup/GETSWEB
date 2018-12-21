/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddRole;
import data.Course;
import data.Person;
import data.Student;
import data.user_role;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import operation.DropBoxOperation;
import operation.SMSOperation;
import org.json.JSONTokener;

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
/**
 *
 * @author Asadali
 */
public class SerPerson extends HttpServlet {
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
            HttpSession hs=request.getSession(true);
     String op=(String) hs.getAttribute("id");
        System.out.println(op);
            CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
        
        Part part=request.getPart("Image");   
      String ct=part.getContentType();
      InputStream is=part.getInputStream();
      String name=extractFileName(part);
        System.out.println("---"+name);
     
       
        String accesstoken=ctx.getInitParameter("accesstoken");
        DropBoxOperation dop=new DropBoxOperation(accesstoken);
     
        String url=dop.uploadFile(name, is);
        System.out.println(url);
         if(request.getParameter("submit")!=null)
        {
            try {
                String pid=cop.generatepid(op);
                String email=request.getParameter("email");
                String gender=request.getParameter("gender");
                
                String dob=request.getParameter("dob");
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                Date  date= sdf.parse(dob);
                  
                String home_no=request.getParameter("home_no");
                String street_no=request.getParameter("street_no");
                String street_name=request.getParameter("street_name");
                String area=request.getParameter("area");
                String city=request.getParameter("city");
                int pincode=Integer.parseInt(request.getParameter("pincode"));
                long contact_no=Long.parseLong(request.getParameter("contact_no"));
                String f_name=request.getParameter("f_name");
                String m_name=request.getParameter("m_name");
                String l_name=request.getParameter("l_name");    
                String quali[]=request.getParameterValues("qualification");
                for(int i=0;i<quali.length;i++)
                {
                    System.out.println("--90"+quali[i]);
                }
                String file_path=url;
                String file_name=name;               
                String password=cop.randompassword();
                //String mime_type=request.getParameter("mime_type");
                
                Person p= new Person(pid,email,gender,date,home_no,street_no,street_name,area,city,pincode,contact_no,f_name,m_name,l_name,file_path,file_name,password);
               // CourseSubSecOperation cop=new CourseSubSecOperation(con);
               p.setQuali(quali);
               String msg = null;
                String mess="username="+email+"password="+password;
                System.out.println(mess);
                String num= "8200781397";
                
                msg = cop.insertinPerson(p);
                
                SMSOperation sms=new SMSOperation();
              //  System.out.println("12");
                sms.sendSMS(num,mess);
               //s System.out.println("3");
                out.println(msg);
                
                System.out.println("116"+op);
                
                if(op.equals("a"))
                {          
                    String addrole_id=(String)hs.getAttribute("addrole_id");
                   user_role ur= new user_role(pid,addrole_id);
                   msg = cop.insertuser_role(ur);
                       
                } 
                
                
            } catch (ParseException ex) {
                Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                 Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
             }
            

        } 
     }
protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
doPost(request,response);
}
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
          out.println("i am called");
         //   String data=request.getParameter("data");
           // System.out.println("--"+data);
           // JSONTokener js=new JSONTokener(data);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
            HttpSession hs=request.getSession(true);
     String op=(String) hs.getAttribute("id");
        System.out.println(op);
            CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
        
        Part part=request.getPart("Image");   
      String ct=part.getContentType();
      InputStream is=part.getInputStream();
      String name=extractFileName(part);
        System.out.println("---"+name);
     
       
        String accesstoken=ctx.getInitParameter("accesstoken");
        DropBoxOperation dop=new DropBoxOperation(accesstoken);
     
        String url=dop.uploadFile(name, is);
        System.out.println(url);
         if(request.getParameter("submit")!=null)
        {
            try {
                String p_id=cop.generatepid(op);
                System.out.println("11");
                String email=request.getParameter("email");
                System.out.println("12");
                String gender=request.getParameter("gender");
                System.out.println("13");
                String dob=request.getParameter("dob");
                System.out.println("14");
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                System.out.println("15");
                Date  date= sdf.parse(dob);
                  System.out.println("16");
                String home_no=request.getParameter("home_no");
                System.out.println("17");
                String street_no=request.getParameter("street_no");
                System.out.println("18");
                String street_name=request.getParameter("street_name");
                System.out.println("19");
                String area=request.getParameter("area");
                System.out.println("20");
                String city=request.getParameter("city");
                System.out.println("21");
                int pincode=Integer.parseInt(request.getParameter("pincode"));
                System.out.println("22");
                long contact_no=Long.parseLong(request.getParameter("contact_no"));
                System.out.println("23");
                String f_name=request.getParameter("f_name");
                System.out.println("24");
                String m_name=request.getParameter("m_name");
                System.out.println("25");
                String l_name=request.getParameter("l_name");    
                System.out.println("26");
                String quali[]=request.getParameterValues("qualification");
                for(int i=0;i<quali.length;i++)
                {
                    System.out.println("--90"+quali[i]);
                }
                String file_path=url;
                System.out.println("27");
                String file_name=name;
                System.out.println("28");
                String password=cop.randompassword();
                //String mime_type=request.getParameter("mime_type");
                System.out.println("29");
                Person p= new Person(p_id,email,gender,date,home_no,street_no,street_name,area,city,pincode,contact_no,f_name,m_name,l_name,file_path,file_name,password);
               // CourseSubSecOperation cop=new CourseSubSecOperation(con);
                System.out.println("30");
                p.setQuali(quali);
                System.out.println("31");
               String msg = null;
                String mess="username="+email+"password="+password;
                System.out.println(mess);
                String num= "8200781397";
                System.out.println("32");
                msg = cop.insertinPerson(p);
                System.out.println("33");
                SMSOperation sms=new SMSOperation();
                System.out.println("34");
                sms.sendSMS(num,mess);
                System.out.println("35");
                out.println(msg);
                
                System.out.println("36---"+op);

                if(op.equals("a"))
                {          
                    String addrole_id=(String)hs.getAttribute("addrole_id");
                   user_role ur= new user_role(p_id,addrole_id);
                   msg = cop.insertuser_role(ur);
                       
                }
                
            } catch (ParseException ex) {
                Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                 Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
             }
            

        }
        

    
    
    
}
      private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }

    }
  

