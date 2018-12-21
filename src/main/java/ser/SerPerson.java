/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddRole;
import data.Course;
import data.Person;
import data.user_role;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
doPost(request,response);
}
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
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
                Person p= new Person(p_id,email,gender,date,home_no,street_no,street_name,area,city,pincode,contact_no,f_name,m_name,l_name,file_path,file_name,password);
               // CourseSubSecOperation cop=new CourseSubSecOperation(con);
                p.setQuali(quali);
               String msg = null;
                String mess="username="+email+"password="+password;
                System.out.println(mess);
                String num= "8200781397";
                msg = cop.insertinPerson(p);
                SMSOperation sms=new SMSOperation();
                sms.sendSMS(num,mess);
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
  

