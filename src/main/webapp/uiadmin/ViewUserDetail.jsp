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
                          <th style="width: 10%">ID</th>
                          <th>Name</th>
                          <th>Profile Attribute</th>
                          <th>Designation</th>
                          <th>Role</th>
                          <th>Priority</th>
                          <th style="width: 20%">#Edit</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <a>1</a>
                          </td>
                          <td>XYZ
                          </td>
                          <td >Experience of 2 years
                          </td>
                          <td>PQR
                          </td>
                          <td>
                            Faculty
                          </td>
                          <td>
                            1
                          </td>
                           <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                      
                        <tr>
                          <td>
                            <a>2</a>
                          </td>
                          <td>ABC
                          </td>
                          <td >Experience of 5 years
                          </td>
                          <td>MNO
                          </td>
                          <td>
                            Staff
                          </td>
                          <td>
                            3
                          </td>
                          <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                         
                           <tr>
                          <td>
                            <a>3</a>
                          </td>
                          <td>UZI
                          </td>
                          <td >Experience of 1 years
                          </td>
                          <td>JKL
                          </td>
                          <td>
                            FACULTY
                          </td>
                          <td>
                            2
                          </td>
                          <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                      
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
