/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
import data.Section;
import data.Subject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;

public class SerSubSec extends HttpServlet {
    
        @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
          HttpSession hs=req.getSession(true);
         String cid=(String)hs.getAttribute("cid");
           
        if(req.getParameter("submit")!=null)
        {
        
            
          String subid=req.getParameter("Subject_Id");
           String subname=req.getParameter("Subject_Name");
            int e=Integer.parseInt(req.getParameter("Hours_Per_Week"));
            int f=Integer.parseInt(req.getParameter("Days_Per_Week"));
            Course course=new Course();
            course.setC_id(cid);
            HashSet<Course> setcourse=new HashSet<Course>();
            setcourse.add(course);
           Subject s=new Subject(subid,subname,e,f,setcourse);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         String m=null;
         msg = cop.insertSubject(s);
         
            
             String secid=req.getParameter("Section_Id");
             String secname=req.getParameter("Section_Name");
             Subject subject=new Subject();
             subject.setSub_id(subid);
            Section se=new Section(secid,secname);
            se.setSubject(subject);
            msg=cop.insertSection(se);
           
          
        }
    res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSubSec.jsp");
     
    }
  @Override
    public String getServletInfo() {
        return "Short description";
    }


}
