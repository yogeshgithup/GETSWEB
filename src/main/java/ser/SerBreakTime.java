/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.BatchSlotMaster;
import data.BreakTime;
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
public class SerBreakTime extends HttpServlet {

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
            String wsid=req.getParameter("wsid");
              String StartTime=req.getParameter("starttime");
              System.out.println("StartTime-----"+StartTime);
              String EndTime=req.getParameter("endtime");
              System.out.println("EndTime"+EndTime);
            BreakTime bt=new BreakTime(StartTime,EndTime);       
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String btid = null;
         btid = cop.insertBreakTime(bt);
                      hs.setAttribute("wsid", wsid);  
                      
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageBatchSlotMasters.jsp");
                  }
    }
}
