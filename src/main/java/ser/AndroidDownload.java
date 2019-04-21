
package ser;

import data.Person;
import data.Student;
import data.user_role;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import operation.DropBoxOperation;
import operation.SMSOperation;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

/**
 *
 * @author divyesh
 */


@javax.servlet.annotation.MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class AndroidDownload extends HttpServlet {
    
       String url,name,type;
       
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          System.out.println("url==="+url);
    System.out.println("name==="+name); 
            System.out.println("typeeee--"+type);
            
            System.out.println("content");
           response.setContentType("text/html");
           PrintWriter out=response.getWriter();
      
       String data=request.getParameter("data");
            System.out.println("98");
            System.out.println("---"+data);
            System.out.println("45");
       
           JSONTokener js=new JSONTokener(data);
            System.out.println("78");
     
           
         ServletContext ctx=this.getServletContext();
   System.out.println("welcome");
  
       Connection con=(Connection)ctx.getAttribute("MyConn");
      
        System.out.println("welcome");
         
           JSONArray ja=(JSONArray)js.nextValue();
             System.out.println("89");
             
           JSONObject obj=(JSONObject)ja.getJSONObject(0);
            System.out.println("46"+obj.toString());
        
         String title=obj.getString("title");
         System.out.println("title="+title);
     
        String materialtype=obj.getString("materialtype");
        System.out.println("type="+materialtype);
     
     
        String course=obj.getString("c_name");
        System.out.println("course="+course);
        String subject=obj.getString("sub_name");
        System.out.println("subject="+subject);
  
  
     String file_path=url;
            System.out.println("filepath="+file_path);
     String contenttype=type;
     
      
     
      // System.out.println("typeeeeeeeee="+contenttype);
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
            System.out.println("opop");
        String details;
            System.out.println("uiop");
        details = cop.androidupload(course,subject,title,materialtype,file_path,contenttype);
        out.println(details);
        
       }
 String SAVE_DIR;
    static final int BUFFER_SIZE = 4096;
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
     
            throws ServletException, IOException {
          PrintWriter out=resp.getWriter();
         String data=req.getParameter("data"); 
         
           System.out.println("-------------------------"+data);
         //  JSONTokener js=new JSONTokener(data);
        ServletContext ctx=this.getServletContext();
        
        Connection con=(Connection)ctx.getAttribute("MyConn");
    String accesstoken=ctx.getInitParameter("accesstoken");
    DropBoxOperation dop= new DropBoxOperation(accesstoken);
        
        SAVE_DIR=req.getSession().getServletContext().getRealPath("/");
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
      Part part=req.getPart("file");
      type=part.getContentType();
       System.out.println("type print karwa----"+type);
      if(type.equals("application/msword"))
      {
         type=".doc";
          System.out.println(type);
      }
      if(type.equals("application/pdf"))
      {
         type=".pdf";
          System.out.println(type);
      }
       System.out.println("typeeeeeeeeeee------"+type);
        InputStream inputStream =part.getInputStream();
        name=this.extractFileName(part);
     
        System.out.println("size--"+inputStream.available());
        System.out.println("65---"+name);
        url=dop.uploadFile(name, inputStream);
        System.out.println("-----url---------"+url);
             System.out.println("all done");      
 
         inputStream.close();
    }
    
    
 private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }

 
}
