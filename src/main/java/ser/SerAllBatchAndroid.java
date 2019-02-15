/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import operation.CourseSubSecOperation;
import operation.SMSOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author divyesh
 */
public class SerAllBatchAndroid extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String data=request.getParameter("data");
            System.out.println("--data="+data);
            System.out.println("12345678915");
            JSONTokener js=new JSONTokener(data);
            System.out.println("82920");
       ServletContext ctx=this.getServletContext();
        System.out.println("1234567890-");
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
          
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");
        
               try {
                JSONArray ja=(JSONArray)js.nextValue();
                JSONObject obj=(JSONObject)ja.getJSONObject(0);
                System.out.println("567"+obj.toString());
               
                String message=obj.getString("Message");
                System.out.println(message);
                
                String allbatch;
                allbatch= cop.allbatchandroid(message);
                
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
            
        
   }
}
