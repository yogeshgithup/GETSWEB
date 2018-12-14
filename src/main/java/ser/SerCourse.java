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
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;

/**
 *
 * @author harshjainn
 */
@WebServlet(name = "SerCourse", urlPatterns = {"/SerCourse"})
public class SerCourse extends HttpServlet {

   
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
        hs.isNew();
        hs.getId();
        System.out.println(hs.getId());
       
        if(req.getParameter("submit")!=null)
        {
            String a=req.getParameter("Course_Id");
            hs.setAttribute("cid", a);
           String b=req.getParameter("Course_Name");
            int ci=Integer.parseInt(req.getParameter("Course_fees"));
            int d=Integer.parseInt(req.getParameter("Duration"));
            int e=Integer.parseInt(req.getParameter("Hours_Per_Week"));
            int f=Integer.parseInt(req.getParameter("Days_Per_Week"));
             Course c = new Course(a,b,ci,d,e,f);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
            try 
            {
                msg = cop.insertCourse(c);
                
            }
            
            catch (SQLException ex) {
                  msg=ex.getMessage();
            }

             res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddCourse.jsp");
//            String radio=req.getParameter("radio");
//            if("Yes".equals(radio))
//            {
//           res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"Selection.jsp");
//            }
//            if("No".equals(radio))
//            {
//           res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddCourse.jsp");
//                
//            }
        }
         }
  @Override
    public String getServletInfo() {
        return "Short description";
    }
}
