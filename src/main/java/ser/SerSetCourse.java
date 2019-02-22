/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;
import org.json.JSONArray;
import org.json.JSONObject;
/**
 *
 * @author harshjainn
 */
public class SerSetCourse extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {    
          System.out.println("servelet called");
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
           HttpSession hs=req.getSession(true);
         String op=req.getParameter("iid");
          System.out.println("213213123123"+op);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
          
         JSONArray ja=(JSONArray)cop.getSelectedCourse(op);
                     System.out.println("jaaa"+ja);
                     out.println((JSONObject)ja.get(0));
        // hs.setAttribute("ja", ja);
       //  res.sendRedirect(ctx.getContextPath()+"/"+"courses.jsp");

     //   res.sendRedirect(ctx.getContextPath()+"/"+"courses.jsp");
           
        } 

    
    
     
}


