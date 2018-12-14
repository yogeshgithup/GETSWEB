/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.util.HashSet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;

/**
 *
 * @author harshjainn
 */
public class ServletViewCourse extends HttpServlet {
      
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
  
  
              ServletContext ctx=this.getServletContext();
              
              String op=request.getParameter("op");
              
   
              Connection con=(Connection)ctx.getAttribute("MyConn");
              
   
              CourseSubSecOperation cop=new CourseSubSecOperation(con);
              
   
              HttpSession hs=request.getSession(true);
              
   
              HashSet<Course> setcourse=cop.getCourse();
              
   
              out.println(setcourse.size());
              
   
              hs.setAttribute("setcourse",setcourse);
              
   
              if(op.equals("view"))
              {
              
   
    response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ViewCourse.jsp");
              }
              if(op.equals("add"))
              {
                       
                  response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSubjectSection.jsp");
              } else {
              }
              
    }
    
}
