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
import org.json.JSONObject;
import org.json.JSONTokener;
import java.util.Iterator;
import java.util.ArrayList;
import operation.CourseSubSecOperation;
/**
 *
 * @author harshjainn
 */
public class SerAssignValueToAttribute extends HttpServlet {

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
        
              String data=request.getParameter("data");
              System.out.println("data----"+data);
         
         ArrayList<String> a = new ArrayList<>();       
         ArrayList<String> b = new ArrayList<>();       
          
         JSONObject object = (JSONObject) new JSONTokener(data).nextValue();
         Iterator<String> keysItr = object.keys();
         while (keysItr.hasNext()) {
        String key = keysItr.next();
      //       System.out.println("key1"+key);
        Object value = object.get(key); 
      //  System.out.println("value"+value);
        JSONObject obj = (JSONObject) new JSONTokener(value.toString()).nextValue();
         Iterator<String> keysitr = obj.keys();
         while (keysitr.hasNext()) {
           String keyy = keysitr.next();
            String pa_id=cop.getproattridaccordingproattr(keyy);
            a.add(pa_id);
            //   System.out.println("key2"+keyy+"paid"+pa_id);
         Object val = obj.get(keyy); 
            b.add(val.toString());
         //     System.out.println("value2"+val);
         String insertinusersprofileattr=cop.insertinusers_profileattr(key,a,b);
             System.out.println(insertinusersprofileattr);
         }
 }
out.println("Servelet");        

    }
}