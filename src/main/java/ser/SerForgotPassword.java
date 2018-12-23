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
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import operation.CourseSubSecOperation;
import operation.SMSOperation;

/**
 *
 * @author Cuteheart
 */
public class SerForgotPassword extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
       ServletContext ctx=this.getServletContext();
       Connection con=(Connection)ctx.getAttribute("MyConn");
       out.println("hello");
       
        if(request.getParameter("submit")!=null)
        {
           try 
           {
               
               String email=request.getParameter("email");
               
               CourseSubSecOperation cop=new CourseSubSecOperation(con);
               
               String password=null;
               password = cop.forgotpassword(email); 
                String mess="password="+password;     
                System.out.println(mess);
                String num= "8200781397";
                System.out.println("32");
                
                System.out.println("33");
                
                System.out.println("34");
                SMSOperation.sendSMS(num,mess);
               
               password = cop.forgotpassword(email);
               
               out.println(password);
           } catch (SQLException ex) {
              
           }
        

}


    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

  
}
