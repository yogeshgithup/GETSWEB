/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddAttribute;
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
public class SerEditLogo extends HttpServlet {

      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
                HttpSession hs=req.getSession(true);
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
        if(req.getParameter("submit")!=null)
        {
              String updatedlogo=req.getParameter("updatedlogo");
           
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.updatelayout(updatedlogo);
         System.out.println(msg);
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditLogo.jsp");

        }
    }
}