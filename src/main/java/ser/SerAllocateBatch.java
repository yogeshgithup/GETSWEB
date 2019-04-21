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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

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
        
            try{ 
              String data=req.getParameter("data");
                
              JSONTokener js=new JSONTokener(data);
            System.out.println("113");       
        JSONArray ja=(JSONArray)js.nextValue();
             System.out.println("53----jarray----"+ja);
           JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("55--obj--"+obj.toString());
          

                     String course=obj.getString("Course");
        System.out.println("coursee--"+course);
                     String subject=obj.getString("subject");
        System.out.println("subject--"+subject);
                     String batchname=obj.getString("batchname");
        System.out.println("batchname--"+batchname);
                      String startdate=obj.getString("startdate");
                                 SimpleDateFormat sdf=new SimpleDateFormat("MM/dd/yyyy");
                Date date= sdf.parse(startdate);
      
        System.out.println("startdate--"+startdate);
        
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String batch_id = null;
         batch_id = cop.insertinbatchallocation(course,subject,batchname,date);
        
              JSONTokener jss=new JSONTokener(obj.getJSONArray("days").toString());
                    JSONArray jaa=(JSONArray)jss.nextValue();
                             System.out.println("jaa.length()"+jaa.length());
                            for(int i=0;i<jaa.length();i++)
                            {
                                         JSONObject objj=(JSONObject)jaa.getJSONObject(i);
                                         String Day=objj.getString("Day");
                                         System.out.println("day"+i+1+"---"+Day);
                                         String shift=objj.getString("shift");
                                         System.out.println("shift"+i+1+"---"+shift);                                      
                                         String slot=objj.getString("slot");
                                         System.out.println("slot"+i+1+"---"+slot);
                                            String appointslot=cop.appointslot(batch_id,slot);    
        
                            }
              
        
         
         hs.setAttribute("msg", batch_id);
          res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AllocateBatch.jsp");
       
            } catch (ParseException ex) {
                Logger.getLogger(SerAllocateBatch.class.getName()).log(Level.SEVERE, null, ex);
            }
              
         
        }

    
}
