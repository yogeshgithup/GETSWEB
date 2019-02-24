/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddRole;
import data.AssignDesignation;
import data.Person;
import data.Priority;
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


public class SerEditUserDetail extends HttpServlet {

   

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
                HttpSession hs=request.getSession(true);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        String p_id=request.getParameter("p_id");
        String priority=request.getParameter("priority");
        System.out.println("prior"+priority);
        CourseSubSecOperation cop= new CourseSubSecOperation(con);
        String msg="";
       
        
        Priority pr=new Priority();
        pr.setP_id(p_id);
        pr.setPriority(priority);
        
        String check=cop.updatepriority(pr);
         
         if(check.equals("success")){
            
           msg="update successfully";
        }
        out.println(msg);
    }

   
   
}
