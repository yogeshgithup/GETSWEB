
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
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;

/**
 *
 * @author divyesh
 */
public class AndroidUploadd extends HttpServlet {

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
           PrintWriter out=response.getWriter();
       
          ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
         
        String detaildownload;
        try {
            detaildownload = cop.androiddownload();
             out.println(detaildownload);
        } catch (SQLException ex) {
            Logger.getLogger(SerCourseAndroid.class.getName()).log(Level.SEVERE, null, ex);
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
