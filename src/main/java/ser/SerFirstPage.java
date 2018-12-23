package ser;


import data.AddRole;
import data.FirstPage;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
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
        Connection con=(Connection)ctx.getAttribute("MyConn");
         CourseSubSecOperation cop=new CourseSubSecOperation(con);
           Part part=req.getPart("image");
                  HttpSession hs=req.getSession(true);
      InputStream is=part.getInputStream();
        System.out.println(is);
      String name=extractFileName(part);
      
     
       
        String accesstoken=ctx.getInitParameter("accesstoken");
        DropBoxOperation dop=new DropBoxOperation(accesstoken);
     
        String url=dop.uploadFile(name, is);
        if(req.getParameter("submit")!=null)
        {   
                             String imagename;
                              String imagepath;
              String institutename=req.getParameter("institutename");
              String filepath=url;
              String filename=name;
              String aboutus=req.getParameter("aboutus");
              int contactno=Integer.parseInt(req.getParameter("contactnumber"));
              String email=req.getParameter("email");
              String address=req.getParameter("address");
              String quote=req.getParameter("quote");
              FirstPage f=new FirstPage(institutename,filepath,filename,contactno,email,address,aboutus,quote);
              Collection<Part> colpart=req.getParts();
              Iterator<Part> it=colpart.iterator();
              ArrayList<String> im=new ArrayList<>();
              ArrayList<String> imi=new ArrayList<>();
              while(it.hasNext())
               {
                   Part p=it.next();
                   InputStream isi=part.getInputStream();
                   System.out.println("isi------"+isi);
                   String pic=p.getName();
                   System.out.println("pic----"+pic);
                   if(pic.equals("pic"))
                   {
                        imagename=extractFileName(part);
                        System.out.println(imagename);
                        im.add(imagename);
                        imagepath=dop.uploadFile(imagename, isi);
                       System.out.println(imagepath);
                     imi.add(imagepath); 
                   }
               }
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
                          msg = cop.insertRole(ar);
                         out.println(msg);    
                         hs.setAttribute("addrole_id",addrole_id);
           
res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"SignupPage.jsp?id=a");
            
     
        }

    
    
    
        
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
