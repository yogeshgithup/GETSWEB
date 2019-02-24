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
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        doPost(req,res);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");

         
//          
//        if(req.getParameter("op")!=null)
//        {
            String cid=req.getParameter("c_id");
            System.out.println("---cid"+cid);
          String sub_id=req.getParameter("sub_id");
            System.out.println("----subid"+sub_id);
           String sub_name=req.getParameter("sub_name");
            System.out.println("----subname"+sub_name);
            Integer hours_per_week=Integer.parseInt(req.getParameter("hours_per_week"));
            
            System.out.println("----hours"+hours_per_week);
            Integer days_per_week=Integer.parseInt(req.getParameter("days_per_week"));
            System.out.println("----days"+days_per_week);
            Course course=new Course();
            course.setC_id(cid);
            HashSet<Course> setcourse=new HashSet<Course>();
            setcourse.add(course);
           Subject s=new Subject(sub_id,sub_name,hours_per_week,days_per_week,setcourse);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         String m=null;
         msg = cop.insertSubject(s);
         System.out.println("sub execute");
            
             String sec_id=req.getParameter("sec_id");
             System.out.println("1sec_id--"+sec_id);
             String sec_name=req.getParameter("sec_name");
             System.out.println("2sec_name--"+sec_name);
             Subject subject=new Subject();
             subject.setSub_id(sub_id);
             System.out.println("3sub_id--"+subject.getSub_id());
             
            Section se=new Section(sec_id,sec_name);
            se.setSubject(subject);
            System.out.println("se---"+se.toString());
            msg=cop.insertSection(se);
           System.out.println("section execute");
          
//        }
//    res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSubjectSection.jsp");
     
    }
 


}
