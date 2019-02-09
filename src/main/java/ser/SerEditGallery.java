package ser;

import data.AddRole;
import data.FirstPage;
import data.pictures;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import operation.CourseSubSecOperation;
import operation.DropBoxOperation;

/**
 *
 * @author harshjainn
 */
@javax.servlet.annotation.MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB

public class SerEditGallery extends HttpServlet {

   
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
     
             
        if(req.getParameter("submit")!=null)
        {
                String imagename;
            String imagepath;
                
              while(it.hasNext())
               {
                   Part p=it.next();
                   InputStream isi=p.getInputStream();
                   String name=extractFileName(p);
                   String pic=p.getName();
                  
                  if(pic.equals("file"))
                   {
                        imagename=name;
                        im.add(imagename);
                        imagepath=dop.uploadFile(imagename, isi);
                       System.out.println(imagepath);
                     imi.add(imagepath); 
                   }
               }
    
      pictures p=new pictures();
              System.out.println("15");
        p.setIimagename(im);
            System.out.println("16");
        p.setIimagepath(imi);
        String Institutename=(String)hs.getAttribute("Iname");
            System.out.println(Institutename);
              String msg = null;
         msg = cop.insertinpictures(p,Institutename);
//         out.println(msg);

                    
res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditGallery.jsp");
            
     
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
