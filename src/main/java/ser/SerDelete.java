/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import data.AddAttribute;
import data.AddDesignation;
import data.AddRole;
import data.Course;
import data.pictures;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import operation.CourseSubSecOperation;

/**
 *
 * @author harshjainn
 */
public class SerDelete extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
           doPost(req,res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        ServletContext ctx = this.getServletContext();
        Connection con = (Connection) ctx.getAttribute("MyConn");

        String id = req.getParameter("id");
        String id1=req.getParameter("id1");
        System.out.println("---"+id);
        System.out.println("---"+id1);
       
        CourseSubSecOperation cop=new CourseSubSecOperation(con);
       
if(id1.equals("deletecourse"))
{
        String msg = null;
                msg = cop.delete(id,id1);
                System.out.println(msg);
                    HttpSession hs=req.getSession(true);
   
              HashSet<Course> setcourse=cop.getCourse();
              out.println(setcourse.size());
              hs.setAttribute("setcourse",setcourse);
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ViewCourse.jsp");
}
  
if(id1.equals("deleteattribute"))
        {
    System.out.println("insidedeleteattribute---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforattribute"+msg);
                    HttpSession hs=req.getSession(true);
   
              HashSet<AddAttribute> setAttribute=cop.getProfileAttribute();
              out.println(setAttribute.size());
              hs.setAttribute("setAttribute",setAttribute);
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddAttribute.jsp");
        }
       

if(id1.equals("deletedesignation"))
        {
    System.out.println("insidedeletedesignation---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforsdesignation------"+msg);
                    HttpSession hs=req.getSession(true);
   
              HashSet<AddDesignation> setDesignation=cop.getDesignation();
              System.out.println("setdesignation"+setDesignation);
              out.println(setDesignation.size());
              hs.setAttribute("setdesignation",setDesignation);
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddDesignation.jsp");
        }

if(id1.equals("deleterole"))
        {
    System.out.println("insidedeletedesignation---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforrole------"+msg);
                    HttpSession hs=req.getSession(true);
   
              HashSet<AddRole> setRole=cop.getRole();
              System.out.println("setRole"+setRole);
              out.println(setRole.size());
              hs.setAttribute("setRole",setRole);
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"AddRole.jsp");
        }

if(id1.equals("deleteimage"))
        {
    System.out.println("insidedeleteimage---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforimage------"+msg);
                    HttpSession hs=req.getSession(true);
           
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"EditGallery.jsp");
        }

 if(id1.equals("deleteslot"))
        {
             System.out.println("insidedeleteslot---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforslot------"+msg);
                    HttpSession hs=req.getSession(true);
           
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageBatchSlotMasters.jsp");   
        }
 
 if(id1.equals("deletebreaktime"))
        {
             System.out.println("insidedeletebreaktime---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforbreaktime------"+msg);
                    HttpSession hs=req.getSession(true);
           
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageBreakTime.jsp");   
        }
 
 if(id1.equals("deleteWorkingShifts"))
        {
             System.out.println("insidedeleteWorkingShifts---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforWS------"+msg);
                    HttpSession hs=req.getSession(true);
           
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageWorkingShifts.jsp");   
        }
 
    
    if(id1.equals("deleteWorkingDays"))
        {
             System.out.println("insidedeleteWorkingDays---------");
    
            String msg = null;
                msg = cop.delete(id,id1);
                System.out.println("deletedmsgforWD------"+msg);
                    HttpSession hs=req.getSession(true);
           
              hs.setAttribute("msg",msg);
       res.sendRedirect(ctx.getContextPath()+"/"+"uiadmin"+"/"+"ManageWorkingDays.jsp");   
        }
    
    }
 }

