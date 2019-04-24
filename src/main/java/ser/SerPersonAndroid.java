 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.Course;
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
import javax.servlet.annotation.MultipartConfig;
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

@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB



public class SerPersonAndroid extends HttpServlet {
     
   String url,name;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String data=request.getParameter("data");
            System.out.println("--data="+data);
            System.out.println("12345678915");
            JSONTokener js=new JSONTokener(data);
            System.out.println("82920");
       ServletContext ctx=this.getServletContext();
        System.out.println("1234567890-");
        Connection con=(Connection)ctx.getAttribute("MyConn");
 //   String accesstoken=ctx.getInitParameter("accesstoken");
  //  DropBoxOperation dop= new DropBoxOperation(accesstoken);
            
            HttpSession hs=request.getSession(true);
            System.out.println(hs);
//           url= (String) hs.getAttribute("url");
//           System.out.println(hs.getAttribute("url"));
//           name= (String) hs.getAttribute("name");
    // String op=(String) hs.getAttribute("id");
      //  System.out.println(op);
      String op="s";  
     System.out.println("url==="+url);
        System.out.println("name==="+name);
         
          CourseSubSecOperation cop=new CourseSubSecOperation(con);
        System.out.println("6789----");

        // if(request.getParameter("submit")!=null)
       // {
            System.out.println("234567890-");
            try {
                JSONArray ja=(JSONArray)js.nextValue();
                JSONObject obj=(JSONObject)ja.getJSONObject(0);
                System.out.println("567"+obj.toString());
                String pid=cop.generatepid(op);
                String email=obj.getString("email");
                System.out.println(email);
                String gender=obj.getString("Gender:");
                System.out.println(gender);
                String dob=obj.getString("dob");
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
                Date  date= sdf.parse(dob);
                  
                String home_no=obj.getString("home_no");
                String street_no=obj.getString("street_no");
                String street_name=obj.getString("street_name");
                String area=obj.getString("area");
                String city=obj.getString("city");
                int pincode=Integer.parseInt(obj.getString("pincode"));
                long contact_no=Long.parseLong(obj.getString("contact_no"));
                String f_name=obj.getString("f_name");
                String m_name=obj.getString("m_name");
                String l_name=obj.getString("l_name");
                 
                String file_path= url;
                String file_name= name;  
                JSONArray ja1=obj.getJSONArray("qualification:");
                String quali[]=new String[ja1.length()];
                
                
                for(int i=0;i<ja1.length();i++)
                {
                   quali[i]=(String)ja1.get(i);
                }
                            
                String password=cop.randompassword();
                //String mime_type=request.getParameter("mime_type");
                
                Person p= new Person(pid,email,gender,date,home_no,street_no,street_name,area,city,pincode,contact_no,f_name,m_name,l_name,file_path,file_name,password);
               // CourseSubSecOperation cop=new CourseSubSecOperation(con);
               p.setQuali(quali);
               String msg = null;
               msg = cop.insertinPerson(p);
               
                String mess="username="+email+"password="+password;
                System.out.println(mess);
                String num= "9586622091";
                String guardian_contact_no=obj.getString("guardian_contact_no");
                System.out.println("gcn"+guardian_contact_no);
                String parent_name=obj.getString("parent_name");
                System.out.println("pname"+parent_name);
                String parent_contact_no=obj.getString("parent_contact_no");
                System.out.println("pcn"+parent_contact_no);
                String guardian_name=obj.getString("guardian_name");
                System.out.println("gnamw"+guardian_name);
                String course=obj.getString("course");
                System.out.println("course"+course);   
                 Course c=new Course();
               // out.println(msg);
                
                System.out.println("116"+op);
                Student st=new Student(guardian_contact_no,parent_name,parent_contact_no,guardian_name,course);
                String msgg=null;
                msgg=cop.insertinstudent(st,pid);
                String msggg=null;
                msggg=cop.insertinstudentcourse(pid,course);
                   SMSOperation sms=new SMSOperation();
              //  System.out.println("12");
                sms.sendSMS(num,mess);
               //s System.out.println("3");
                if(op.equals("a"))
                {          
                    String addrole_id=(String)hs.getAttribute("addrole_id");
                   user_role ur= new user_role(pid,addrole_id);
                   msg = cop.insertuser_role(ur);
                } 
                
                
            } catch (ParseException ex) {
                Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                 Logger.getLogger(SerPerson.class.getName()).log(Level.SEVERE, null, ex);
             }
             
            

       // }
       
    }
        
    String SAVE_DIR;
    static final int BUFFER_SIZE = 4096;
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        
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
        InputStream inputStream =part.getInputStream();
        name=this.extractFileName(part);
        String des=req.getParameter("description");
        System.out.println("des----"+des);
        String keywords=req.getParameter("keywords");
        System.out.println("keywords----"+keywords);
        System.out.println("size--"+inputStream.available());
        
        url=dop.uploadFile(name, inputStream);
        System.out.println(url);
                   
        //hs.setAttribute("url",url);
       //System.out.println("----"+hs.getAttribute("url"));
        //hs.setAttribute("name", name);
        //System.out.println("------99"+hs.getAttribute("name"));
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
  