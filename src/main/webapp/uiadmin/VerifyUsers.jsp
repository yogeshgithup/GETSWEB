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
      <h3>Approve User</h3>   
                               <%   System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                  JSONArray ja=(JSONArray)cso.getStatus();
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
                   
     <p style="padding: 5px;">
                          <input type="checkbox" name="status" id="status" value="<%=obj.getString("p_id")%>" data-parsley-mincheck="2"   class="flat" /><%=obj.getString("p_id")%>
                        <br />
                     <p>
<% }%>
      <button type="submit" value="accept" name="submit" class="btn btn-success">Accept </button>
      <!--<button type="button"  value="remove" name="remove" class="btn btn-success"><a href="/SerVerifyUser?id=remove">Remove</a> </button>-->
         <a href="<%=application.getContextPath()%>/SerVerifyUser?id=remove" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a>                          
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
