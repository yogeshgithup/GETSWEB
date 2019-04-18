/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;
import java.text.SimpleDateFormat;

/**
 *
 * @author harshjainn
 */
public class SerAllocateBatch extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        doPost(req,res);       
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
      res.setContentType("text/html");
        HttpSession hs=req.getSession();
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
        if(req.getParameter("submit")!=null)
        {
            try{ 
              String course=req.getParameter("course");
              String sub=req.getParameter("subject");
              String batchname=req.getParameter("Batch_Name");
              String startdate=req.getParameter("Start_Date");
                 SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
                Date date= sdf.parse(startdate);
             String day=req.getParameter("day");
             String shift=req.getParameter("shift");
             String slot=req.getParameter("slot");
             
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String batch_id = null;
         batch_id = cop.insertinbatchallocation(course,sub,batchname,date);
        
         String appointslot=cop.appointslot(batch_id,slot);    
         
         hs.setAttribute("msg", batch_id);
          res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AllocateBatch.jsp");
       
            } catch (ParseException ex) {
                Logger.getLogger(SerAllocateBatch.class.getName()).log(Level.SEVERE, null, ex);
            }
              
         
        }

    }
    
}
