/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddAttribute;
import data.AddDesignation;
import data.user_role;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import operation.DropBoxOperation;

/**
 *
 * @author Asadali
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB


public class SerEditLayout extends HttpServlet {

          @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
                doPost(req,res);
    }
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
                HttpSession hs=req.getSession(true);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
      
          String id=(String) hs.getAttribute("id");
          System.out.println("------df-----------"+id);
    
          if(id.equals("editlogo"))
        {
        
        Part part=req.getPart("updatedlogo");   
      String ct=part.getContentType();
      InputStream is=part.getInputStream();
      String name=extractFileName(part);
        System.out.println("-name--"+name);
     
       
        String accesstoken=ctx.getInitParameter("accesstoken");
        DropBoxOperation dop=new DropBoxOperation(accesstoken);
     
        String url=dop.uploadFile(name, is);
        System.out.println(url);

        
        if(req.getParameter("submit")!=null)
        {
            String filepath=url;
            String filename=name;
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.updatelayout(filepath,filename);
         System.out.println(msg);
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditLogo.jsp");

        }
        }
 
    
        if(id.equals("editinstitutename"))
        {
         if(req.getParameter("submit")!=null)
        {
            String updatedname=req.getParameter("updateinstitutename");
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
        msg = cop.updateinstitutename(updatedname);
         System.out.println(msg);
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditInstituteName.jsp");

        }   
        }
    
    
        if(id.equals("editquoteaboutus"))
        {
         if(req.getParameter("submit")!=null)
        {
            String updatedquote=req.getParameter("updatequote");
            String updatedaboutus=req.getParameter("updateaboutus");
   
            CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
        msg = cop.updatequotesaboutus(updatedquote,updatedaboutus);
         System.out.println(msg);
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditAboutUs.jsp");

        }
         
        }
        
        
        
    
        if(id.equals("editaddresscontactemail"))
        {
            System.out.println("1");
         if(req.getParameter("submit")!=null)
             
        {
            System.out.println("2");
            String updatedcontactus=req.getParameter("updatecontactus");
       
            String updatedemail=req.getParameter("updateemail");
            String updatedaddress=req.getParameter("updateaddress");
   
            CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
        msg = cop.updatequotesaboutus(updatedcontactus,updatedemail,updatedaddress);
         System.out.println(msg);
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditContactUs.jsp");

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