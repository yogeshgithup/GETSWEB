
package ser;

import data.Person;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
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
 * @author divyesh
 */
public class SerIndividualAndroid extends HttpServlet {

protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
     PrintWriter out=response.getWriter();
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
                JSONArray jab=(JSONArray)js.nextValue();
                JSONObject obj=(JSONObject)jab.getJSONObject(0);
                System.out.println("567"+obj.toString());
               
                String message=obj.getString("Message");
                System.out.println(message);
                
                String enrollno=obj.getString("enroll_no");
                   System.out.println(enrollno);
                String pid=enrollno.substring(0, 2);
                   System.out.println( enrollno.substring(0, 2));
              
                String allbatch;
                allbatch= cop.androidnotification(message,pid,"forindividual");
                
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
            
            
     
         
   }
}
