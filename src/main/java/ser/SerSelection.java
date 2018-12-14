/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SerSelection", urlPatterns = {"/SerSelection"})

public class SerSelection extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        HttpSession hs=req.getSession(true);
        System.out.println(hs.isNew());  
        System.out.println(hs.getId());
        System.out.println((String)hs.getAttribute("cid"));
    
        if(req.getParameter("submit")!=null)
        {
            
            String a=req.getParameter("Check");
            String b=req.getParameter("Check1");
         if(a!=null)
            {
                if(b!=null)
                {
                    res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSubSec.jsp");
                }
                else
                {
                    res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSubject.jsp");
                }
            }    
            else if(b!=null)
            {
                res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddSection.jsp");
            }
    
        }
        }
         
  
}
