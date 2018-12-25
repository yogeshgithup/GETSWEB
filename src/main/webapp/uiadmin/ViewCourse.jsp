<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="data.Course"%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>ViewCourse</title>
  <%@include file="adminHeaders.jsp" %>
 
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
   <%@include file="navigation.jsp" %>
  
          <!-- /page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>ViewCourse</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>ViewCourse</h2>
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
                        
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" >
             
        <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th>C_Id</th>
                          <th>C_Name</th>
                          <th>C_Fees</th>
                          <th>Duration</th>
                          <th>Hours_Per_Week</th>
                          <th>Days_Per_Week</th>
                          <th>Delete</th>
                        </tr>
                      </thead>
                      <tbody>   
                              <%
                              System.out.println("75");
                              HashSet<Course> setcourse=(HashSet<Course>)session.getAttribute("setcourse");
                              System.out.println("77");
                              Iterator<Course> it=setcourse.iterator();
                                System.out.println("78");
                              while(it.hasNext())
                              {
                                    System.out.println("82");
                                  Course course=it.next();
                                %>
                                  <tr>
                                        <td>
                                         <%=course.getC_id()%>
                                       </td>
                                        <td>
                                         <%=course.getC_name()%>
                                       </td>
                                        <td>
                                         <%=course.getC_fees()%>
                                       </td>
                                        <td>
                                         <%=course.getDuration()%>
                                       </td>
                                        <td>
                                         <%=course.getHours_per_week()%>
                                       </td>
                                        <td>
                                          <%=course.getDays_per_week()%>
                                       </td>
                                        <td>
                                            <a href="<%=application.getContextPath()%>/SerDelete?id=<%=course.getC_id()%>" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a>
                                       </td>

                                  </tr>
                                  <% }%>
                      </tbody>
        </table>
   
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
