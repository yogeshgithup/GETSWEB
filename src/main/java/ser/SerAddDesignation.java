/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddDesignation;
import data.user_role;
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
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;

/**
 *
 * @author Asadali
 */
public class SerAddDesignation extends HttpServlet {

      @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        HttpSession hs=req.getSession();
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
        if(req.getParameter("submit")!=null)
        {
              String AddDES_ID=req.getParameter("AddDES_ID");
              String Designation=req.getParameter("Designation");
              System.out.println(Designation);
             AddDesignation obj= new AddDesignation(AddDES_ID,Designation);
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.insertdesignation(obj);
         out.println(msg);
                             hs.setAttribute("id", msg);
          res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddDesignation.jsp");
                     
 
        }
    }
}