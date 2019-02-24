/*/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
import data.Subject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
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
@WebServlet(name = "SerSubject", urlPatterns = {"/SerSubject"})
public class SerSubject extends HttpServlet {

   
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
//            HttpSession hs=req.getSession(true);
//         String cid=(String)hs.getAttribute("cid");   
//          if(req.getParameter("submit")!=null)
//        {
         String cid=req.getParameter("c_id");
        System.out.println("--------------------"+cid);
         String sub_id=req.getParameter("sub_id");
           String sub_name=req.getParameter("sub_name");
            Integer hours_per_week=Integer.parseInt(req.getParameter("hours_per_week"));
            Integer days_per_week=Integer.parseInt(req.getParameter("days_per_week"));
          
            Course course=new Course();
            course.setC_id(cid);
            System.out.println("in sersub"+course.getC_id());
            HashSet<Course> setcourse=new HashSet<Course>();
            setcourse.add(course);
           Subject s=new Subject(sub_id,sub_name,hours_per_week,days_per_week,setcourse);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         String m=null;
         msg = cop.insertSubject(s);
        // out.println("Sucesss");
//        }
         }
  @Override
    public String getServletInfo() {
        return "Short description";
    }
}













