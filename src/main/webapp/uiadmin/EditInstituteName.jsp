<%@page import="data.FirstPage"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddDesignation"%>
<%@page import="data.AddAttribute"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Edit Institute Name</title>
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
          
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                      <h2>Edit Institute Name</h2>
             
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
                       <%
                                 
                        session.setAttribute("id","editinstitutename");                  
                                it=setfirstpage.iterator();
                                 while(it.hasNext())
                                 {
                                       FirstPage fp=it.next();
                    %>
                 
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>/SerEditLayout">
                        <center><h3><bold><%=fp.getInstitutename()%></bold></h3></center>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="updateinstitutename">Update Institute Name
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                             <input type="text" id="updatecontactus" name="updateinstitutename" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="submit" name="submit" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
<%}%>
      </div>
    </div>

        <!-- /page content -->
  


    <%@include file="adminfootersfiles.jsp" %>
 
 	
  </body>
</html>
