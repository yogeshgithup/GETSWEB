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
public class SerIndividual extends HttpServlet {

  
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
        
        String student=request.getParameter("student");
        String msg=request.getParameter("message");
               
//          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");
        
               try {
                
                String individual;
                individual= cop.notification(msg,student,"forindividual");
           
                if(request.getParameter("sec").equals("staff"))
         {
             response.sendRedirect(ctx.getContextPath()+"/"+"SendIndividualStaff.jsp");
         }
         else
         {
             response.sendRedirect(ctx.getContextPath()+"/"+"SendIndividual.jsp");
         }   
         
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
        
    }

         
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
