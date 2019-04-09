/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 *
 * @author harshjainn
 */
public class DbConnection  implements ServletContextListener{
    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
    Connection con=null;
    ServletContext ctx=null;
  String url;
  String un;
  String password;
  String driver;
  
    try
    {
        
        ctx =sce.getServletContext();
      driver=ctx.getInitParameter("driver");
      un=ctx.getInitParameter("un");
      url=ctx.getInitParameter("url");
      password=ctx.getInitParameter("password");
      Class.forName(driver);
      System.out.println("driver is loaded");
      con=DriverManager.getConnection(url,un,password);
      System.out.println("connected"); 
  
    ctx.setAttribute("MyConn",con);
    }
     catch(Exception cnfe)
      {
      System.out.println("driver not loaded="+cnfe.getMessage());
      return;
      }
    }
    @Override
    public void contextDestroyed(ServletContextEvent sce)
    {
       ServletContext ctx;
       Connection con;
      try
      {
       ctx=sce.getServletContext();
      
    
      }
     catch(Exception cnfe)
      {
      System.out.println("driver not loaded="+cnfe.getMessage());
      return;
      }
    }
    
}
 