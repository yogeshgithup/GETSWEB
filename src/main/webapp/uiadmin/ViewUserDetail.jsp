 <%@page import="org.json.JSONArray"%>
 <%@page import="org.json.JSONTokener"%>
 <%@page import="org.json.JSONObject"%>

<!DOCTYPE html>
<html lang="en">
  <head>

    <title>View User Detail</title>
    <%@include file="adminHeaders.jsp" %>
    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
         
        <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
         <script src="<%=application.getContextPath()%>/uiadmin/js/jquery-ui-1.10.4.custom.min.js"></script>        
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.dataTables.editable.js"></script>
        <script src="<%=application.getContextPath()%>/uiadmin/js/jquery.jeditable.js"></script>
    <script> 
        $(document).ready(function(){
            $("#tabledetail").DataTable();
        });
    </script>

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
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>View User Details</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">  
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                      
                    <p>Simple table with User Detail with editing options</p>
 <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" >
                    <!-- start project list -->
                    <table name="tabledetail" id="tabledetail" class="display table table-striped table-bordered" cellspacing="0" width="100%"  style="color:black ; ">
                      <thead>
                        <tr>
                          <th style="width: 10%">P_ID</th>
                          <th>Name</th>
                          <th>Role</th>
                          <th>Designation</th>
                         
                        </tr>
                      </thead>
                      <tbody>
                           <%
                           CourseSubSecOperation cso=new CourseSubSecOperation(con);
                            JSONArray ja=cso.getusersdetails();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                              %>
                         
                          <tr>
                          
                          <td>
                              <%=obj.getString("p_id")%>
                          </td>
                          <td><%=obj.getString("f_name")%>
                          </td>
                          <td><%=obj.getString("role")%>
                          </td>
                          <td><%=obj.getString("designation")%>
                          </td>
                         
                         
                          </tr>
                         <% }%>
                        
                      </tbody>
                    </table>
                    <!-- end project list -->
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
