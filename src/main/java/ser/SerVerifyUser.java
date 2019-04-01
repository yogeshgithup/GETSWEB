/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.*; 
import java.util.*; 

import data.AssignAttribute;
import data.AssignDesignation;
import data.Assign_role;
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
 * @author harshjainn
 */
public class SerVerifyUser extends HttpServlet {

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
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
    
        if(request.getParameter("submit")!=null)
        {
            
            if(request.getParameter("id").equals("remove"))
             {
                 System.out.println("1");
                        String p_id=request.getParameter("p_id");
//         ArrayList<String> ar = new ArrayList<>();
//                 for (int i = 0; i < p_id.length; i++) {
//                           ar.add(p_id[i]);
//                 }
         String msg = null;
         msg = cop.verifyuser(p_id,"reject");
                 
             }
            if(request.getParameter("id").equals("accept"))
            {
                System.out.println("11");
              String p_id=request.getParameter("p_id");
//         ArrayList<String> ar = new ArrayList<>();
//                 for (int i = 0; i < p_id.length; i++) {
//                           ar.add(p_id[i]);
//                 }
         String msg = null;
         msg = cop.verifyuser(p_id,"accept");
             }
         response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"VerifyUsers.jsp");
             

    }
 }
}
