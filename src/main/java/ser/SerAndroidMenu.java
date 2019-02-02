/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;



import data.FirstPage;
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
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author divyesh
 */
public class SerAndroidMenu extends HttpServlet {

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
           PrintWriter out=response.getWriter();
       
          ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
            
           try {  
               String contactus=cop.contactus();
        out.println(contactus);
          
           } catch (SQLException ex) {
               Logger.getLogger(SerAndroidMenu.class.getName()).log(Level.SEVERE, null, ex);
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
