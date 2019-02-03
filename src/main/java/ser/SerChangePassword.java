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

//   protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//  doPost(request,response);
//   } 


 
   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         ServletContext ctx=this.getServletContext();
       Connection con=(Connection)ctx.getAttribute("MyConn");
       HttpSession hs=request.getSession(true);
         PrintWriter out=response.getWriter();
         String data=request.getParameter("data");
         System.out.println(data);
         
         JSONTokener js=new JSONTokener(data);
            System.out.println("78");
            
         JSONArray ja=(JSONArray)js.nextValue();
         System.out.println("6789");
         JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("46"+obj.toString());
            
      
       
        String password= obj.getString("password");
        String newpassword =obj.getString("newpassword");
        String loginid=obj.getString("email");
       
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
            
       String pswd=cop.changepassword( newpassword,loginid); 
      // out.println(pswd);
    }

 
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
              String Current_Password=req.getParameter("Enter_Current_Password");
            System.out.println("ser--------"+Current_Password);
              String New_Password=req.getParameter("New_Password");
            System.out.println("ser--------"+New_Password);
       
              String loginid=(String) hs.getAttribute("loginid");
         
              CourseSubSecOperation cop=new CourseSubSecOperation(con);
         String msg = null;
         msg = cop.changepassword(loginid,New_Password);
         out.println(msg);
         
  
        }     
        res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ChangePassword.jsp");

    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
