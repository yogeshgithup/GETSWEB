/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.BreakTime;
import data.WorkingShifts;
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

/**
 *
 * @author harshjainn
 */
public class SerWorkingShift extends HttpServlet {
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
                HttpSession hs=req.getSession(true);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        if(req.getParameter("submit")!=null)
        {
              String WorkingHours=req.getParameter("workinghours");
              System.out.println("StartTime-----"+WorkingHours);
     
            String StartTime=req.getParameter("starttime");
              System.out.println("StartTime-----"+StartTime);
              String EndTime=req.getParameter("endtime");
              System.out.println("EndTime"+EndTime);
            WorkingShifts ws=new WorkingShifts(WorkingHours,StartTime,EndTime);       
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.insertWorkingShifts(ws);
         out.println(msg);
                      hs.setAttribute("msg", msg);                      
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageWorkingShifts.jsp");
                  }
    }
}
