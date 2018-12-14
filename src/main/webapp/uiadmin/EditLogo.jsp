<!DOCTYPE html>
<html lang="en">
  <head>
    <title>EditLogo</title>
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
                <h3>Edit Logo</h3>
              </div>

            
            </div>
            
       <div class="x_content">
                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                      <div class="profile_img">
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <img class="img-responsive avatar-view" src="<%=application.getContextPath()%>/uiadmin/images/picture.jpg" alt="Avatar" title="Change the avatar">
                        </div>
                      </div>
                      <br />    
                      
                <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Update Image<span class="required">
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="UpdateImage" name="UpdateImage" class="date-picker form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                       <br />
                       <a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Edit Profile</a>
                      <br />

             <div class="clearfix"></div>

            
        <!-- /page content -->
  
 <%@include file="adminfootersfiles.jsp" %>
 	
  </body>
</html>
