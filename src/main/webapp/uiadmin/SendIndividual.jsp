<%@page import="data.Student"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="org.json.JSONArray"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Send Individual</title>
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
            <div class="page-title">
              <div class="title_left">
                <h3>Send Individual Notification</h3>
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
               
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                              <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
                 <%session.removeAttribute("msg");%>              
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    
<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>/SerIndividual">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rollno">Roll No
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                               <h>Select Student</h>   
      <select  id="student" name="student">
                             <%
                           CourseSubSecOperation cso=new CourseSubSecOperation(con);
                            JSONArray ja=cso.individualweb();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                              %>
                         
                                  <option value="<%=obj.getString("p_id")%>"><%=obj.getString("p_id")%>--<%=obj.getString("f_name")%></option>
                                 
                                  <% } %>
      </select>
                        </div>
                      </div>
                             <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="message">Message
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <textarea id="message" name="message" class="form-control" rows="6" ></textarea>
                        
                        </div>
                      </div>
                      
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
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
