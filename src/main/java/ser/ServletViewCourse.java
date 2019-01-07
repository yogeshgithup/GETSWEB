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
//      
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//        
//    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        System.out.println("37");
              ServletContext ctx=this.getServletContext();
              System.out.println("40");
              String op=request.getParameter("op");
              
        System.out.println("43");
              Connection con=(Connection)ctx.getAttribute("MyConn");
              System.out.println("45");
   
              CourseSubSecOperation cop=new CourseSubSecOperation(con);
              System.out.println("46");
   
              HttpSession hs=request.getSession(true);
              System.out.println("47");
   
              HashSet<Course> setcourse=cop.getCourse();
              System.out.println("48");
   
              out.println(setcourse.size());
              System.out.println("49");
   
              hs.setAttribute("setcourse",setcourse);
              System.out.println("50");
   
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
