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
import java.text.SimpleDateFormat;
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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author harshjainn
 */
public class SerAllocateBatchToStudent extends HttpServlet {

    
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
        HttpSession hs=req.getSession(true);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
        if(req.getParameter("submit")!=null)
        {
              String sub_id=req.getParameter("subject");
            System.out.println("sub_id--------"+sub_id);
              String student_id=req.getParameter("student");
            System.out.println("student_id--------"+student_id);
           String batch_id=req.getParameter("batch");
            System.out.println("batch_id--------"+batch_id);
       
                   
                   
              CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String assignsubtostudent=cop.assignsubtostudent(student_id,sub_id);
              String msg = null;
         msg = cop.allocatestudent(student_id,batch_id);
         
         out.println(msg);
         
  
        }     
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AllocateStudent.jsp");

    }

        
         
        }

    

