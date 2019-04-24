<!DOCTYPE html>
<html lang="en">
  <head>
  
    <title>AdminPanel</title>
    <%@include file="adminHeaders.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        
    <%@include file="navigation.jsp" %>
           <%
           
           
           int stu=cop.getcount("forstudent");
           
           int batch=cop.getcount("forbatch");
           
           int user=cop.getcount("forusers");
           
           
           
           %>
        <!-- /page content -->
          <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Students</span>
              <div class="count"><%=stu%></div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i>No of Batches</span>
              <div class="count"><%=batch%></div>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Users </span>
              <div class="count green"><%=user%></div>
            </div>
              </div>
              </div>
      <!-- /page content -->
      
      </div>
          </div>
        


      
     <%@include file="adminfootersfiles.jsp" %>
 
  </body>
</html>
