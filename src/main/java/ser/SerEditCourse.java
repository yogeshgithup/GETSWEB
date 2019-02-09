/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import operation.CourseSubSecOperation;

/**
 *
 * @author Asadali
 */
public class SerEditCourse extends HttpServlet {

   
    @Override
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
        String c_id=request.getParameter("c_id");
        System.out.println("c_id"+c_id);
        String c_name=request.getParameter("c_name");
        Integer c_fees=Integer.parseInt(request.getParameter("c_fees"));
        Integer duration=Integer.parseInt(request.getParameter("duration"));
        Integer hours_per_week=Integer.parseInt(request.getParameter("hours_per_week"));
        Integer days_per_week=Integer.parseInt(request.getParameter("days_per_week"));
        CourseSubSecOperation cop= new CourseSubSecOperation(con);
        String msg="";
        Course c=new Course();
        c.setC_id(c_id);
        c.setC_name(c_name);
        c.setC_fees(c_fees);
        c.setDuration(duration);
        c.setHours_per_week(hours_per_week);
        c.setDays_per_week(days_per_week);
        String check=cop.updatecourse(c);
        out.println(msg);
         if(check.equals("success")){
            
           msg="update successfully";
        }
    
  response.sendRedirect(ctx.getContextPath()+"/"+"ServletViewCourse?op=view"); 

    }

}
