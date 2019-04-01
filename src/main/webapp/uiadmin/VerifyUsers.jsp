<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.Person"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.AddRole"%>
<%@page import="java.util.HashSet"%>
<%@page import="org.json.JSONArray"%>
 <%@page import="org.json.JSONTokener"%>
 <%@page import="org.json.JSONObject"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Assign Role</title>
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
                        $('#tableverify').DataTable();
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
            
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                         <h2>Verify User</h2>
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

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerVerifyUser?id=accept">
      <table class="display table table-striped table-bordered" cellspacing="0" width="100%"  style="color:black ; " id="tableverify">
        <thead>
                        <tr>
                          <th>P_Id</th>
                          <th>F_Name</th>
                          <th>Contact</th>
                          <th>Course</th>
                          <th>Profile Image</th>
                          <th>Verify</th>
                          <th>Reject</th>
                         </tr>
                         
                      </thead>
                      <tbody>          
    
                               <%   System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                  JSONArray ja=(JSONArray)cso.getunverifiedstudents();
                                 JSONTokener js=new JSONTokener(ja.toString());
                                 System.out.println("]]"+ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 //System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                                 //  System.out.println(".-.-"+obj.getString("p_id")); 
                          %>
                   
     <tr>
                                        <td>
                                         <%=obj.getString("p_id")%>
                                       </td>
                                        <td>
                                         <%=obj.getString("f_name")%>
                                       </td>
                                        <td>
                                         <%=obj.getString("contact_no")%>
                                       </td>
                                       <td>
                                         <%=obj.getString("course")%>
                                       </td>
                                       <td>
                                            <img class="mySlides" src="<%=obj.getString("file_path")%>" width="100px" height="100px" >
                                       </td>
                                       <td>
                                            <button type="submit" value="accept" name="submit" class="btn btn-success">Accept </button>
                                       </td>
                                       <td>
                                           <a href="<%=application.getContextPath()%>/SerVerifyUser?id=remove&p_id=<%=obj.getString("p_id")%>" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a> 
                                       </td> 

                                  </tr>
                                  
                         
<% }%>
<!--                           
    </table> 
         </form>
                  </div>
                </div>
     </div>
            </div>
          </div>
      </div>
      </div>
    </div>
  
   <%@include file="adminfootersfiles.jsp" %>
  </body>
  
  </html>
