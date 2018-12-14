/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
import data.Section;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
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
public class SerSection extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       System.out.println("38----------");
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        // HttpSession hs=req.getSession(true);
        // String d=(String)hs.getAttribute("cid");
  //      if(req.getParameter("submit")!=null)
    //    {
            String cid=req.getParameter("cid");
            
            String a=req.getParameter("section_id");
            String b=req.getParameter("section_name");
            Course course= new Course();
            course.setC_id(cid);
            Section se=new Section(a,b);
            se.setCourse(course);
            CourseSubSecOperation cop=new CourseSubSecOperation(con); 
        
            String msg = null;
            msg = cop.insertSection(se);
            out.println(msg);
      //  }
//res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSection.jsp");
    }
  @Override
    public String getServletInfo() {
        return "Short description";
    }
    
}
