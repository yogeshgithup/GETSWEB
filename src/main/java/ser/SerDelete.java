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
import java.sql.SQLException;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class SerDelete extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        ServletContext ctx = this.getServletContext();
        Connection con = (Connection) ctx.getAttribute("MyConn");

        String a = req.getParameter("id");
        System.out.println("---"+a);
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
       
           String msg = null;
                    
                msg = cop.deleteCourse(a);
                System.out.println(msg);
                    HttpSession hs=req.getSession(true);
   
              HashSet<Course> setcourse=cop.getCourse();
              out.println(setcourse.size());
              hs.setAttribute("setcourse",setcourse);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ViewCourse.jsp");
    
    }
}
