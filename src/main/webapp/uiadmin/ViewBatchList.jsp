<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddRole"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>


<!DOCTYPE html>
<html lang="en">
  <head>

    <title>ViewBatchList</title>
    <%@include file="adminHeaders.jsp" %>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
     <%@include file="navigation.jsp" %>
  <%
String msg=(String)session.getAttribute("msg");
                    if(msg!=null)
                    {
                 //      out.println(msg);
                    }
                  else if(msg==null)
                {
                    msg="";
              }
%>




<script>
$(document).ready(function(){
    //alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
        //    });
//    
});
 </script>


       
  
  <!-- page content -->
<div class="right_col" role="main">
          <div class="">
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>ViewBatchList</h2>

                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
  <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
                    </div>
               <%session.removeAttribute("msg");%>
 
                    <div class="clearfix"></div>
                  </div>
                    
                  <div class="x_content">
                    <br />                  
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>">

                       <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th>Batch Name</th>
                          <th>Course</th>
                          <th>subject</th>
                          <th>Shift</th>
                          <th>Slot</th>
                          <th>day</th>
                          <th>Start Date</th>
                          
                        </tr>
                      </thead>
                      <tbody>
                                      <%
                           CourseSubSecOperation cso=new CourseSubSecOperation(con);
                            JSONArray ja=cso.getBatchDetail();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                                String BN="";
                                   
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                                    System.out.println("out if");
                                   %>
                         
                          <tr>
                          
                          <% 
                             if(obj.getString("batchname").equals(BN))
                             {
                                           System.out.println("in if");
                          
                           %>      
                          <td>
                          </td>                      
                           <td>
                          </td>
                          <td>
                          </td>
                          <td><%=obj.getString("shift")%>
                          </td>
                          <td><%=obj.getString("slot")%>
                          </td>
                          <td><%=obj.getString("day")%>
                          </td>                          
                          <td><%=obj.getString("startdate")%>
                          </td>
 
                         
                          </tr>
                           <%
                             }
                             
                             else
                             {
                                           System.out.println("in else");                          
                            %>
                          <td>
                              <%=obj.getString("batchname")%>
                          </td>                      
                           <td><%=obj.getString("course")%>
                          </td>
                          <td><%=obj.getString("subject")%>
                          </td>
                          <td><%=obj.getString("shift")%>
                          </td>
                          <td><%=obj.getString("slot")%>
                          </td>
                          <td><%=obj.getString("day")%>
                          </td>                          
                          <td><%=obj.getString("startdate")%>
                          </td>
   
                          </tr>
                            
                            <%
                             }
                             
                           BN=obj.getString("batchname");
                           System.out.println("bn-----------"+BN);
                            } 
                          %>
                      
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
