
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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author divyesh
 */
public class SerFeesStatusAndroid extends HttpServlet {

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
           PrintWriter out=response.getWriter();
           
       String data=request.getParameter("data");
            System.out.println("111");
          System.out.println("---"+data);
            System.out.println("112");
        JSONTokener js=new JSONTokener(data);
            System.out.println("113");
     
           
          ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        
        JSONArray ja=(JSONArray)js.nextValue();
             System.out.println("114");
           JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("115"+obj.toString());
          
    
       String email=obj.getString("Username");
     System.out.println(email);
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
         
        String feestatus;
             try {
                 feestatus = cop.androidfeesstatus(email);
                      out.println(feestatus);
             } catch (SQLException ex) {
                 Logger.getLogger(SerAndroidGallery.class.getName()).log(Level.SEVERE, null, ex);
             }
   
    }
}