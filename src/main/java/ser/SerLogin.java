/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Login;
import data.Person;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import operation.DropBoxOperation;
import operation.SMSOperation;

/**
 *
 * @author harshjainn
 */
public class SerLogin extends HttpServlet {
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out=response.getWriter();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
             System.out.println(request.getParameter("submit"));
        if(request.getParameter("submit")!=null)
        {
            System.out.println("welcome2");
            String LoginId=request.getParameter("LoginId");
            String Password=request.getParameter("Password");
            String msg = null;
            Login l=new Login(LoginId,Password);
            msg = cop.LoginProcess(l);
            if(msg.equals("Admin"))
            {
                response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AdminPanel.jsp");
            }
            else
            {
                response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"StaffPanel.jsp");
            }
            out.println(msg);
            
 
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
