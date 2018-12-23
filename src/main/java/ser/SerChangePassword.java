/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Login;
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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author Cuteheart
 */
public class SerChangePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SerChangePassword</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SerChangePassword at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          HttpSession session=request.getSession(true);  
        String pid=(String)session.getAttribute("pid");
        System.out.println("pid-----"+pid);
         PrintWriter out=response.getWriter();
         String data=request.getParameter("data");
         JSONTokener js=new JSONTokener(data);
            System.out.println("78");
            
         JSONArray ja=(JSONArray)js.nextValue();
         JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("46"+obj.toString());
            
       ServletContext ctx=this.getServletContext();
       Connection con=(Connection)ctx.getAttribute("MyConn");
       out.println("hello");
       
        String password= obj.getString("password");
        String newpassword =obj.getString("newpassword");
        
       
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
            
       String pswd=cop.changepassword(pid, newpassword); 
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
