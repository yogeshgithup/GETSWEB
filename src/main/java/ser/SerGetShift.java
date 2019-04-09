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

/**
 *
 * @author harshjainn
 */
public class SerGetShift extends HttpServlet {

@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   doPost(request,response);
    }   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        System.out.println("calleeddd seervelet----------------");
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
              String s_name=request.getParameter("id");
              System.out.println("shift_name----"+s_name);
                 
              JSONArray ja=cop.getSelectedShift(s_name);
              System.out.println(ja.toString());
            out.println(ja);        
                
         }

    
}
