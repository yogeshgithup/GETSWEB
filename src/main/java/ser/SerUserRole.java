/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddRole;
import data.AssignAttribute;
import data.AssignDesignation;
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
import javax.servlet.http.HttpSession;
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
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        if(request.getParameter("submit")!=null)
        {
             if(request.getParameter("id").equals("rol"))
             {
               String p_id[]=request.getParameterValues("p_id");
              String role=request.getParameter("role");
             Assign_role ar= new Assign_role(role);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         ar.setP_id(p_id);
         String msg = null;
         msg = cop.assign_role(ar);
         out.println(msg);          
           
         String profile_Attr[]=request.getParameterValues("Pattr");
         AssignAttribute aa= new AssignAttribute();
         aa.setP_id(p_id);
         aa.setProfile_Attr(profile_Attr);
         HttpSession hs=request.getSession(true);
         hs.setAttribute("Attr",aa); 
         response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AssignAttribute.jsp");
             }
             
             if(request.getParameter("id").equals("des"))
             {
                  String p_id[]=request.getParameterValues("p_id");
              String des=request.getParameter("des");
             AssignDesignation ad= new AssignDesignation(des);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         ad.setP_id(p_id);
         String msg = null;
         msg = cop.assign_designation(ad);
         out.println(msg);          
           
         response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AssignDesignation.jsp");
                 
             }

    }
 }
}