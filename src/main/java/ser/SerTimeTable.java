
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


public class SerTimeTable extends HttpServlet {

 
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out=response.getWriter();
      ServletContext ctx=this.getServletContext();
        System.out.println("1234567890-");
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
          
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");
        
               try {
                JSONArray jab=cop.timetable();
                   System.out.println("jsonarray-----"+jab);
              
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
            
           }
   }
    

   
    

