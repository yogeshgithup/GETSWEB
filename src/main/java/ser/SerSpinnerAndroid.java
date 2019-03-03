
package ser;
import data.Person;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
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
 * @author divyesh
 */
public class SerSpinnerAndroid extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
      PrintWriter out=response.getWriter();
        ServletContext ctx=this.getServletContext();
        System.out.println("1234567890-");
        Connection con=(Connection)ctx.getAttribute("MyConn");
        
          
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");
      JSONArray ja=new JSONArray();
               try {
          
                   
               HashSet<Person> getperson=cop.getPerson();
               Iterator<Person> it=getperson.iterator();
        
               while(it.hasNext())
               {
                      
                JSONObject obj=new JSONObject();
                    Person person=it.next();
                  //System.out.println("sadasdads"+person.getP_id().substring(0,1));
                    if(person.getP_id().substring(0,1).equals("S"))
                    {
                    obj.put("p_id",person.getP_id());            
                    obj.put("p_fname",person.getF_name());           
                    obj.put("p_mname",person.getM_name());
                    obj.put("p_lname",person.getL_name());
                    ja.put(obj); 
               }
                  
                       
               }    
            
                    
              out.println(ja.toString());        
        
               }
               catch(Exception e)
               {
                   System.out.println("123--------"+e);
               }
                
        
    }        
                
   }
