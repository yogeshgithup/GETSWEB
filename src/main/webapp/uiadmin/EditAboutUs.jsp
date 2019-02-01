<%@page import="data.FirstPage"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddDesignation"%>
<%@page import="data.AddAttribute"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>EditAboutUs</title>
    <%@include file="adminHeaders.jsp" %>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
    <%@include file="navigation.jsp" %>

  
  <!-- page content -->
          <div class="right_col" role="main">
          <div class="">
            
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                         <h2>EditAboutus</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>/SerEditLayout">
  <%
                                 HttpSession hs=request.getSession();
                        hs.setAttribute("id","editquoteaboutus");                  
                               ServletContext ctx=this.getServletContext();
                                  Connection con=(Connection)ctx.getAttribute("MyConn");
                                  CourseSubSecOperation cop=new CourseSubSecOperation(con);
                               HashSet<FirstPage> setfirstpage=cop.getfirstpage();
                               Iterator<FirstPage> it=setfirstpage.iterator();
                                 while(it.hasNext())
                                 {
                                       FirstPage fp=it.next();
                    %>
                                              <center><h3><bold><%=fp.getQuote()%></bold></h3></center>
  
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="updatequote">Update Quote
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                             <input type="text" id="updatecontactus" name="updatequote" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div><br/>
                                              <center><h2><bold><%=fp.getAboutus()%></bold></h2></center>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="updateaboutus">Update AboutUs
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <textarea id="updateaboutus" name="updateaboutus" class="form-control" rows="6" ></textarea>
                        
                        </div>
                      </div>
     <%}%>                 
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="send" name="submit" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>

      </div>
    </div>

        <!-- /page content -->
  


    <%@include file="adminfootersfiles.jsp" %>
 
 	
  </body>
</html>
