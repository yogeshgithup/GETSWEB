<!DOCTYPE html>
<html lang="en">
  <head>
    
    <title>AddDesignation</title>
   <%@include file="adminHeaders.jsp" %>
 
    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
          <%@include file="navigation.jsp" %>
 
    <%
session.setMaxInactiveInterval(2);
%>

 <script type="text/javascript">
var Msg=null;
Msg ="<%=(String)session.getAttribute("msg")%>";
 if (Msg === "1") {
 
 alert("Data Entered Successfully");
  
 }
 if(Msg === "0")
 {
 alert("Duplicacy error");   
    }
 
 </script> 

  <!-- page content -->
          <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Add Designations</h3>
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
                    <h2>Designations</h2>
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
                        <tr>
                          <td>1
                          </td>
                          <td>Faculty
                          </td>
                          <td>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                      
                          <tr>
                          <td>2
                          </td>
                          <td>Staff
                          </td>
                          <td>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                    

                        <tr>
                          <td>3
                          </td>
                          <td>Admin</td>
                          <td>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
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
