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
public class SerAllocateStaff extends HttpServlet {

 
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
        
        String data=req.getParameter("data");
        JSONTokener js=new JSONTokener(data);
        System.out.println("113");       
        JSONArray ja=(JSONArray)js.nextValue();
        System.out.println("53----jarray----"+ja);
        JSONObject obj=(JSONObject)ja.getJSONObject(0);
        System.out.println("55--obj--"+obj.toString());
        String fac=obj.getString("Staff");
        System.out.println("faculty-------------"+fac);
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
       
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
            
            String appointdayshifttouser=cop.appointdayshifttouser(fac,Day,shift);    
        
                            }
    JSONTokener sjss=new JSONTokener(obj.getJSONArray("coursesubject").toString());              
    JSONArray ajaa=(JSONArray)sjss.nextValue();
    System.out.println("jaa.length()"+ajaa.length());
    for(int i=0;i<ajaa.length();i++)
    {
        JSONObject objjj=(JSONObject)ajaa.getJSONObject(i);
        String course=objjj.getString("course");
        System.out.println("course"+i+1+"---"+course);
        String subject=objjj.getString("subject");
        System.out.println("subject"+i+1+"---"+subject);
        
        String appointcoursesubjecttouser=cop.appointcoursesubjecttouser(fac,course,subject);    
        
    }
    hs.setAttribute("msg", "success");
    res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AllocateStaff.jsp");
              
         
        }

}
