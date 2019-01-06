/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddRole;
import data.Assign_role;
import data.user_role;
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
public class SerUserRole extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                 
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        //System.out.println("34----welcome");
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
       // System.out.println("38------welcome back");
        if(request.getParameter("submit")!=null)
        {
         //   System.out.println("41----Welcome in");
              String p_id[]=request.getParameterValues("p_id");
           //   System.out.println("43----PID"+p_id);
              String role_id=request.getParameter("role_id");
             // System.out.println("45-----roleid"+role_id);
             Assign_role ar= new Assign_role(role_id);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         ar.setP_id(p_id);
         String msg = null;
         msg = cop.assign_role(ar);
         out.println(msg);

    }
 }
}