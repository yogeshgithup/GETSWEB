/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.BreakTime;
import data.WorkingDays;
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
import java.util.*;
/**
 *
 * @author harshjainn
 */
public class SerWorkingDays extends HttpServlet {
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
            String days[]=req.getParameterValues("days");
            ArrayList<String> d = new ArrayList<>();
            for (int i = 0; i < days.length; i++) {
                d.add(days[i]);
            }
            WorkingDays wd=new WorkingDays();
           wd.setDays(days);
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.insertWorkingDays(d);
         out.println(msg);
                      hs.setAttribute("msg", msg);                      
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageWorkingDays.jsp");
                  }
    }
}
