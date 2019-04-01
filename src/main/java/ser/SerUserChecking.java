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
 * @author Asadali
 */
public class SerUserChecking extends HttpServlet {

    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
         PrintWriter out=response.getWriter();
        // out.println("hellooo");
        if(request.getParameter("LoginId")!=null)
        {
            
            try {
                String login= request.getParameter("LoginId");
                String answer=cop.verifyuseremail(login);
                    out.println(answer);
                     String ans=answer;
                  System.out.println("-----"+answer);
                if(answer.equals(ans))
                {
                    System.out.println("----"+answer);
                    out.println(answer);
                }
            } catch (SQLException ex) {
                Logger.getLogger(SerUserChecking.class.getName()).log(Level.SEVERE, null, ex);
            }
         
        
    }

  

  }
}