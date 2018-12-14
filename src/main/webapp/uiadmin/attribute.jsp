<!DOCTYPE html>
<html lang="en">
  <head>
    <title>AddAttribute</title>
    <%@include file="adminHeaders.jsp" %>
 
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
             
       
    <%@include file="navigation.jsp" %>
           
  <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Add Attributes</h3>
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
                    <h2>Attributes</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerAddAttribute">


                    </form>
                       <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th>P_Id</th>
                          <th>Profile Attribute</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1
                          </td>
                          <td>
                               <input type="text" id="attr" name="a1"  class="form-control col-md-7 col-xs-12">
                          </td>
                          
                            <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                      
                          <tr>
                          <td>2
                          </td>
                          <td> <input type="text" id="attr" name="a2"  class="form-control col-md-7 col-xs-12">
                          </td>
                            <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
                            <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        <tr>
                    

                        <tr>
                          <td>3
                          </td>
                          <td> <input type="text" id="lastname" name="a3"  class="form-control col-md-7 col-xs-12"></td>
                            <td>
                            <a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> View </a>
                            <a href="#" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i> Edit </a>
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
