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
    <title>View Course</title>
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
                        $('#tablecourse').DataTable();
                    });
                </script>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
   <%@include file="navigation.jsp" %>
  
          <!-- /page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
               
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>View Course Details</h2>
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
//session.setMaxInactiveInterval(2);
%>

<!-- <script type="text/javascript">
var Msg=null;
Msg ="//(String)session.getAttribute("msg");
 if (Msg !== null) {
 
 alert("Course Deleted");
  
 }
 </script>       
-->
<script type="text/javascript">

            function editRow(oTable, nRow)
            {
                var Data = oTable.fnGetData(nRow);
                var Td = $('>td', nRow);
                alert(Td.length + "-------");
                //jqTds[0].innerHTML = '<input type="text" value="' + aData[0] + '" readOnly>';
                Td[0].innerHTML = '<input type="text" value="' + Data[0] + '" readOnly>';
                Td[1].innerHTML = '<input type="text" value="' + Data[1] + '">';
                Td[2].innerHTML = '<input type="text" value="' + Data[2] + '">';
                Td[3].innerHTML = '<input type="text" value="' + Data[3] + '">';
                Td[4].innerHTML = '<input type="text" value="' + Data[4] + '">';
                Td[5].innerHTML = '<input type="text" value="' + Data[5] + '">';
                
                
                Td[6].innerHTML = '<a class="edit" href="">Save</a>';
            }


            function saveRow(oTable, nRow)
            {
                var Inputs = $('input', nRow);

                alert(Inputs.length);
                var c_id = Inputs[0].value;
                var c_name = Inputs[1].value;
                var c_fees = Inputs[2].value;
                var duration = Inputs[3].value;
                var hours_per_week = Inputs[4].value;
                var days_per_week = Inputs[5].value;
                alert("cid:"+c_id);
                alert(c_name);
                location.href = "<%=application.getContextPath()%>/SerEditCourse?c_id="+ c_id + "&c_name=" + c_name + "&c_fees=" + c_fees + "&duration=" + duration + "&hours_per_week="+ hours_per_week+"&days_per_week="+days_per_week;
                    
                oTable.fnUpdate('<a class="edit" href="">Edit</a>', nRow, 1, false);
                oTable.fnDraw();
            }

            function restoreRow(oTable, nRow) {
                var Data = oTable.fnGetData(nRow);
                var Td = $('>td', nRow);

                for (var i = 0, iLen = Td.length; i < iLen; i++) {
                    oTable.fnUpdate(Data[i], nRow, i, false);
                }
                oTable.fnDraw();
            }


           





                var nEditing = null;

                $(document).on('click', '#tablecourse a.edit', function(e) {
                 alert("inedit");
                    e.preventDefault();

                    var nRow = $(this).parents('tr')[0];

                    if (nEditing!== null && nEditing!== nRow) {
                        /* Currently editing - but not this row - restore the old before continuing to edit mode */
                        alert("inif");
                        restoreRow(oTable, nEditing);
                        editRow(oTable, nRow);
                        nEditing = nRow;
                    }
                    else if (nEditing === nRow && this.innerHTML === "Save") {
                        alert(nRow);
                        /* Editing this row and want to save it */
                        alert("inelseif");
                        saveRow(oTable, nEditing);
                        nEditing = null;
                    }
                    else {
                        /* No edit in progress - let's start one */
                       alert("inelse");
                        editRow(oTable, nRow);
                        nEditing = nRow;
                    }
                });

            });

        </script>
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" >
             
        <table class="display table table-striped table-bordered" cellspacing="0" width="100%"  style="color:black ; " id="tablecourse">
                      <thead>
                        <tr>
                          <th>C_Id</th>
                          <th>C_Name</th>
                          <th>C_Fees</th>
                          <th>Duration</th>
                          <th>Hours_Per_Week</th>
                          <th>Days_Per_Week</th>
                          <th>Edit</th>
                          <th>Delete</th>
                          
                        </tr>
                      </thead>
                      <tbody>   
                              <%
                                  System.out.println("75");
                              HashSet<Course> setcourse=(HashSet<Course>)session.getAttribute("setcourse");
                              System.out.println("77");
                              Iterator<Course> ittt=setcourse.iterator();
                                System.out.println("78");
                              while(ittt.hasNext())
                              {
                                    System.out.println("82");
                                  Course course=ittt.next();
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
                                           <a class="edit" href="">Edit</a>
                                       </td>
                                        <td>
                                            <a href="<%=application.getContextPath()%>/SerDelete?id=<%=course.getC_id()%>&id1=deletecourse" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a>
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
       <!-- jQuery -->
 
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
