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

/**
 *
 * @author Asadali
 */
public class SerGiveFeedback extends HttpServlet {

   

   
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
        String p_id=request.getParameter("loginid");
        String rating=request.getParameter("rating");
        String message=request.getParameter("Message");
        
        try{
            String Feedback=cop.givefeedback(p_id,rating, message);
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
