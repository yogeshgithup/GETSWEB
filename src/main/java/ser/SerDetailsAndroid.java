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
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author divyesh
 */
public class SerDetailsAndroid extends HttpServlet {
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
           PrintWriter out=response.getWriter();
       
           
       String data=request.getParameter("data");
            System.out.println("98");
          System.out.println("---"+data);
            System.out.println("45");
       
           JSONTokener js=new JSONTokener(data);
            System.out.println("78");
     
           
        ServletContext ctx=this.getServletContext();
   System.out.println("welcome");
    
       Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        
           JSONArray ja=(JSONArray)js.nextValue();
             System.out.println("89");
           JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("46"+obj.toString());
          
    String email=obj.getString("Username");
     System.out.println(email);
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
            
        String details;
     try {
         details = cop.adminemail(email);
         out.println(details);
         
     } catch (SQLException ex) {
         Logger.getLogger(SerDetailsAndroid.class.getName()).log(Level.SEVERE, null, ex);
     }
        
       
          
    
    }
    
       private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
  
        }
        return "";
    }

   
}
