<%@page import="java.util.Iterator"%>
<%@page import="data.Person"%>
<%@page import="data.AssignAttribute"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="java.sql.Connection"%>
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
  <%
session.setMaxInactiveInterval(2);
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                   <h2>Assign Attribute</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">  
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
    <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
               </div>
           
                      <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <!-- start project list -->
                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 10%">ID</th>
                   <!--//     <th>Name</th>-->
                     
<% //                                  System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                   AssignAttribute aa=(AssignAttribute)session.getAttribute("Attr");
                                   String PA[]=aa.getProfile_Attr();
                                   for(int i=0;i<PA.length;i++)
                                  {
                              %>        
                                    <th><%=PA[i]%></th>
                              <%        
                                  }
                                %>                         
                        </tr>
                      </thead>
                      <tbody>
                            <%
                                   String P_id[]=aa.getP_id();
                                   for(int j=0;j<P_id.length;j++)
                                   {                                     
                            %>
                                       <tr>
                          <td>  
                              <a><%=P_id[j]%></a>
                          </td>
                           <%
                                  for(int ii=0;ii<PA.length;ii++)
                                  {
                          %>
                          <td >
                         <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="ValueAttribute" name="ValueAttribute"  class="form-control col-md-7 col-xs-12">
                        </div>
               
                          </td>
                            <%}%>                                      
                         </tr>
                        <%}%>

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
