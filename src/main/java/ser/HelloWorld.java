/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ser;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asadali
 */

public class HelloWorld extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html:");
        PrintWriter out = response.getWriter() ;
            
            String un=request.getParameter("un");
            String up=request.getParameter("up");
            String city=request.getParameter("city");
            System.out.println(un+"  "+up+"  "+city);
            if(up.equals("Admin")&&un.equals("Admin"))
            {
                out.println("success!="+""+city);
            }
            else
            {
                out.println("wrong!="+""+city);
            }
            }
        }
    

 

