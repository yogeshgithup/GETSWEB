<%-- 
    Document   : ViewListOfStudents
    Created on : Mar 8, 2019, 11:16:16 AM
    Author     : Asadali
--%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedbacks</title>
         <%@include file="adminHeaders.jsp" %>
  <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
         <script src="<%=application.getContextPath()%>/uiadmin/js/jquery-ui-1.10.4.custom.min.js"></script>        
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.dataTables.editable.js"></script>
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.jeditable.js"></script>
 <script type="text/javascript">
                    $(document).ready(function() {
                       // alert("table");
                        $('#feedbacks').DataTable();
                    });
                </script>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
   <%@include file="navigationfaculty.jsp" %>
  
          <!-- /page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
               
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Feedbacks</h2>
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
             
        <table class="display table table-striped table-bordered" cellspacing="0" width="100%"  style="color:black ; " id="feedbacks">
                      <thead>
                        <tr>
                          <th>F_Id</th>
                          <th>P_Id</th>
                          <th>F_Name</th>
                          <th>Rating</th>
                          <th>Comment</th>
                         </tr>
                         
                      </thead>
                      <tbody>
                           <%
                                  System.out.println("75");
                             JSONArray ja = (JSONArray)cop.getfeedback();
                             JSONTokener js= new JSONTokener(ja.toString()); 
                             JSONArray jaa=(JSONArray)js.nextValue();
                             System.out.println("77");
                           for (int i = 0; i < ja.length(); i++) {
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                               
                            %>
                             <tr>
                                        <td>
                                         <%=obj.getString("f_id")%>
                                       </td>
                                        <td>
                                         <%=obj.getString("p_id")%>
                                       </td>
                                        <td>
                                         <%=obj.getString("f_name")%>
                                       </td>
                                       <td>
                                         <%=obj.getString("f_rating")%>
                                       </td>
                                        <td>
                                          <%=obj.getString("f_comment")%>  
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
 <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.time.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/moment/min/moment.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<%=application.getContextPath()%>/uiadmin/build/js/custom.min.js"></script>
        
    </body>
</html>
