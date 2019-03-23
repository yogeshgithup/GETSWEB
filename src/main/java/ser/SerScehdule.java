/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.util.*;
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
public class SerScehdule extends HttpServlet {

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
              String day=req.getParameter("day");
              System.out.println("day-----"+day);
     
        
              String BreakTime=req.getParameter("bt");
              System.out.println("bt-----"+BreakTime);
     
             
              String ws[]=req.getParameterValues("shift");
               ArrayList<String> ar = new ArrayList<>();
            for (int i = 0; i < ws.length; i++) {
                 ar.add(ws[i]);
            }
               CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String dayWs = null;
         String dayBt = null;
         dayWs = cop.insertDayWS(ar,day);
         dayBt= cop.insertinWSday(day,BreakTime);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ScheduleForDay.jsp");
                  }
    }
   
}
