/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddAttribute;
import data.AddDesignation;
import data.AddRole;
import data.Course;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.HashSet;
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
public class SerViewManageDetail extends HttpServlet {
//      
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse res)
//            throws ServletException, IOException {
//        
//    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
              ServletContext ctx=this.getServletContext();
              String id=request.getParameter("id");
              Connection con=(Connection)ctx.getAttribute("MyConn");
              CourseSubSecOperation cop=new CourseSubSecOperation(con);
              HttpSession hs=request.getSession(true);
         
              if(id.equals("aa")||id.equals("aaa"))
              {
                  if(id.equals("aa"))
                  {
              HashSet<AddAttribute> setAttribute=cop.getProfileAttribute();
              System.out.println("48"+setAttribute);
     
              out.println(setAttribute.size());
               hs.setAttribute("setAttribute",setAttribute);
                  response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddAttribute.jsp");
                   }
                  if(id.equals("aaa"))
                  {
                     HashSet<AddAttribute> setAttribute=cop.getProfileAttribute();
              System.out.println("4sdcsdjcvsdjcjs8"+setAttribute);
              
              out.println("dskbfhjdfhdsfjdsf"+setAttribute.size());
               hs.setAttribute("setAttribute",setAttribute);
              hs.setAttribute("msg", hs.getAttribute("msg"));
               response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddAttribute.jsp");
                      
                  }
              }
              if(id.equals("des"))
              {
                  System.out.println("des");
              HashSet<AddDesignation> setDesignation=cop.getDesignation();
              System.out.println("48"+setDesignation);
   
              out.println(setDesignation.size());
               hs.setAttribute("setdesignation",setDesignation);
                  response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddDesignation.jsp");
                  
              }
               if(id.equals("role"))
              {
                  System.out.println("role");
              HashSet<AddRole> setRole=cop.getRole();
              System.out.println("48"+setRole);
   
              out.println(setRole.size());
               hs.setAttribute("setRole",setRole);
                  response.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddRole.jsp");
                  
              }
    }
    
}
