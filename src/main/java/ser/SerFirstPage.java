package ser;


import data.AddRole;
import data.FirstPage;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
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
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB

public class SerFirstPage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        ServletContext ctx=this.getServletContext();
        System.out.println("37------");
        Connection con=(Connection)ctx.getAttribute("MyConn");
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
                  HttpSession hs=req.getSession(true);
    
         Collection<Part> colpart=req.getParts();
              Iterator<Part> it=colpart.iterator();
              ArrayList<String> im=new ArrayList<>();
              ArrayList<String> imi=new ArrayList<>();
    String accesstoken=ctx.getInitParameter("accesstoken");
        DropBoxOperation dop=new DropBoxOperation(accesstoken);
     
             
//         Part part=req.getPart("image");
//      InputStream is=part.getInputStream();
//        System.out.println(is);
      
     
       
        if(req.getParameter("submit")!=null)
        {
            System.out.println("54");
            String institutename=req.getParameter("institutename");
            String imagename;
            String imagepath;
            String filepath = null;
            String filename = null;
                
              while(it.hasNext())
               {
                   Part p=it.next();
                   InputStream isi=p.getInputStream();
                   String name=extractFileName(p);
                   String pic=p.getName();
                  
                  if(pic.equals("pic"))
                   {
                        imagename=name;
                        im.add(imagename);
                        imagepath=dop.uploadFile(imagename, isi);
                       System.out.println(imagepath);
                     imi.add(imagepath); 
                   }
                   if(pic.equals("image"))
                   {
                       filename=name;
                       System.out.println(filename);
                       filepath=dop.uploadFile(filename, isi);
                       System.out.println(filepath);
                   }
               }
    
              String aboutus=req.getParameter("aboutus");
              int contactno=Integer.parseInt(req.getParameter("contactnumber"));
              String email=req.getParameter("email");
              String address=req.getParameter("address");
              String quote=req.getParameter("quote");
              FirstPage f=new FirstPage(institutename,filepath,filename,contactno,email,address,aboutus,quote);
           
              System.out.println("15");
        f.setImagename(im);
            System.out.println("16");
        f.setImagepath(imi);
        
              String msg = null;
         msg = cop.insertinlayout(f);
//         out.println(msg);

                       String addrole_id="1";
                      String role="Admin";
                        AddRole ar= new AddRole(addrole_id,role);
            try {
                msg = cop.insertRole(ar);
            } catch (SQLException ex) {
                Logger.getLogger(SerFirstPage.class.getName()).log(Level.SEVERE, null, ex);
            }
                         out.println(msg);    
                         hs.setAttribute("addrole_id",addrole_id);
           
res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"SignupPage.jsp?id=a");
            
     
        }

    
  }
    
       @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           PrintWriter out=response.getWriter();
         
             ServletContext ctx=this.getServletContext();
        Connection con=(Connection)ctx.getAttribute("MyConn");
        System.out.println("welcome");
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
            System.out.println("welcome2");
           JSONArray ja=new JSONArray();
           JSONObject obj=new JSONObject();
            HashSet<FirstPage> firstpage=cop.getfirstpage();
            Iterator it=firstpage.iterator();
            while(it.hasNext())
            {
                FirstPage fp=(FirstPage) it.next();
                obj.put("contactno",fp.getContactno());
                 obj.put("email",fp.getContactno());
                  obj.put("address",fp.getContactno());
                  ja.put(obj);
            }
            
            out.println(ja.toString());
            
           
           
           
//              int contactno=Integer.parseInt(obj.getString("contactnumber"));
//      
//            System.out.println(contactno);
//           
//            String email=obj.getString("email");
//            System.out.println(email);
//              String address=obj.getString("address");
//            System.out.println(address);
//            String msg = null;
//             contactus l=new Login(email,Password);
//            msg = cop.LoginProcess(l);
//       
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
