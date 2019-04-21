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

/**
 *
 * @author divyesh
 */
public class SerAndroidLayout extends HttpServlet {

         @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");
           PrintWriter out=response.getWriter();
       
          ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
         
        String gallery;
             try {
                 gallery = cop.androidlayout();
                      out.println(gallery);
             } catch (SQLException ex) {
                 Logger.getLogger(SerAndroidLayout.class.getName()).log(Level.SEVERE, null, ex);
             }
   
    }

   }

