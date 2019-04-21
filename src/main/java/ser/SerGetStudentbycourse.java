/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import operation.CourseSubSecOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author harshjainn
 */
public class SerGetStudentbycourse extends HttpServlet {

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
        System.out.println("calleeddd seervelet----------------");
        ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
        
              String course=request.getParameter("id");
              System.out.println("course_id----"+course);
             JSONArray ja=cop.getSelectedCourse(course);
                         
              JSONTokener js=new JSONTokener(ja.toString());
              JSONArray jaa=(JSONArray)js.nextValue();
              JSONObject obj=(JSONObject)jaa.getJSONObject(0);
               String coursename=obj.getString("c_name");    
              JSONArray jaaa=cop.getSelectedStudent(coursename);
              System.out.println(jaaa.toString());
            out.println(ja);        
                
         }

}
