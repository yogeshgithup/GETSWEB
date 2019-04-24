/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import operation.CourseSubSecOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author harshjainn
 */
public class SerAllBatch extends HttpServlet {
   
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String msg=request.getParameter("message");
            System.out.println("--data="+msg);
       ServletContext ctx=this.getServletContext();
        System.out.println("1234567890-");
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
          
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");
        
               try {
                
                String allbatch;
                allbatch= cop.notification(msg,"","forall");
                
                      if(request.getParameter("sec").equals("staff"))
         {
             response.sendRedirect(ctx.getContextPath()+"/"+"SendAllStaff.jsp");
         }
         else
         {
             response.sendRedirect(ctx.getContextPath()+"/"+"SendAllStaff.jsp");
         }   
                
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
            
        
   }
}
