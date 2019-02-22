 <%@page import="org.json.JSONArray"%>
 <%@page import="org.json.JSONTokener"%>
 <%@page import="org.json.JSONObject"%>

<!DOCTYPE html>
<html lang="en">
  <head>

    <title>ViewUserDetail</title>
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

                    <!-- start project list -->
                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 10%">P_ID</th>
                          <th>Name</th>
                          <th>Role</th>
                          <th>Designation</th>
                          <th>Priority</th>
                          <th>Profile Attribute</th>
                          <th style="width: 20%">#Edit</th>
                        </tr>
                      </thead>
                      <tbody>
                           <%
                           CourseSubSecOperation cso=new CourseSubSecOperation(con);
                            JSONArray ja=cso.getusersdetails();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(0);
                                System.out.println("46"+obj.toString());
        
                            System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {
                            %>
                         
                          <tr>
                          <td>
                              <%=obj.getString("p_id")%>
                          </td>
                          <td><%=obj.getString("f_name")%>
                          </td>
                          <td><%=obj.getString("designation")%>
                          </td>
                          <td><%=obj.getString("role")%>
                          </td>
                          <td>
                                 <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>                       
                          </td>
                          <td>
                                 <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>                       
                          </td>
                           <td>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                         
                        </tr>
                         <%}%>
                        
                      </tbody>
                    </table>
                    <!-- end project list -->

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
