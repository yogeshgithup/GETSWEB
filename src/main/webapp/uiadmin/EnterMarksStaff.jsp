a<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddAttribute"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="org.json.JSONArray"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Enter Marks</title>
    <%@include file="adminHeaders.jsp" %>
 
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
             
       
    <%@include file="navigationfaculty.jsp" %>
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
                    <h2>Enter Marks</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerAddAttribute">
                          <h3>Select Course</h3>
      <select  id="course" name="course">
  
                        <%
                        System.out.println("loginid in enter marks"+loginid);
                           
                      JSONArray ja=cop.getsubjectcourseformarks(loginid,"course");
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                              %>
                         
                                  <option value="<%=obj.getString("c_id")%>"><%=obj.getString("c_name")%></option>
                                 
                                  <% } %>

                    
                    %> 
      </select>            
           
                    </form>
                    

                  </div>
                </div>
              </div>
            </div>
  <!-- /page content -->
  
      </div>
    </div>
      </div>
                      </div>
</body>
  
     <%@include file="adminfootersfiles.jsp" %>
           
      
  
</html>
