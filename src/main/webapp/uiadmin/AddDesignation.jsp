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
    
    <title>Add Designation</title>
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
       $('#msg').fadeOut(5000);
    
});
 </script>

 
    
  <!-- page content -->
          <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Designation</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="get" action="<%=application.getContextPath()%>/SerAddDesignation">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="AddDES_ID">Add DES_ID<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="AddDES_ID" name="AddDES_ID"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Desgination">Desgination<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Desgination" name="Designation" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                    </form>
                       <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th>DES_ID</th>
                          <th>Designation</th>
                        </tr>
                      </thead>
                      <tbody>
                            <%
                                                               HashSet<AddDesignation> setDesignation=cop.getDesignation();
       
                              System.out.println("77"+setDesignation);
                              
                              Iterator<AddDesignation> ittt=setDesignation.iterator();
                                System.out.println("78");
                              while(ittt.hasNext())
                              {
                                    System.out.println("82");
                                    AddDesignation des=ittt.next();
                                %>
                          <tr>
                          <td><%=des.getAddDES_ID()%>
                          </td>
                          <td><%=des.getDesignation()%>
                          </td>
                          <td>
                            <a href="<%=application.getContextPath()%>/SerDelete?id=<%=des.getAddDES_ID()%>&id1=deletedesignation" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
  <%}%>

                        </tbody>
                    </table>
                    

                  </div>
                </div>
              </div>
            </div>

        <!-- /page content -->
  
      </div>
    </div>

     
     <%@include file="adminfootersfiles.jsp" %>
 
 

  </body>
</html>
