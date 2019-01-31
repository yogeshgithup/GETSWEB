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
    
    <title>EditLogo</title>
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
                    <h2>EditLogo</h2>
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
                    <%
                               ServletContext ctx=this.getServletContext();
                                  Connection con=(Connection)ctx.getAttribute("MyConn");
                                  CourseSubSecOperation cop=new CourseSubSecOperation(con);
                               HashSet<FirstPage> setfirstpage=cop.getfirstpage();
                               Iterator<FirstPage> it=setfirstpage.iterator();
                                 while(it.hasNext())
                                 {
                                       FirstPage fp=it.next();
                    %>
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>/SerEditLogo">
                                  
                  <center>      <div class="x_content">
                      <label class="control-label col-md-3 col-sm-3 col-xs-12">Present Logo<span class="required">
                        </label>
                       
                 
                          <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                         <div class="profile_img">
                   
                             <div id="crop-avatar">
                          <!-- Current avatar -->
                          <img class="img-responsive avatar-view" src="<%=fp.getFilepath()%>" alt="Avatar" title="Change the avatar">
                        </div>
        <br/>
                        <%}%>
                      </div>                       
                    </div> 
                         </div>                       
                     <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Update Image<span class="required">
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="UpdateImage" name="updatedlogo" class="date-picker form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <br/>
                      
                        <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
            </div>

        <!-- /page content -->
  
      </div>
    </div>

     
     <%@include file="adminfootersfiles.jsp" %>
 
 

  </body>
</html>
