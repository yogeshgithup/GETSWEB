<!DOCTYPE html>
<html lang="en">
  <head>

    <title>AddSubSec</title>
<%@include file="adminHeaders.jsp" %>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
             
            <%@include file="navigation.jsp" %>
           
 <!-- /page content -->
  <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Add Sub-Sec</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 <h2><center>Enter Subject-Section Details</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerSubSec">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Subject_Id">Subject_Id
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Subject_Id" name="Subject_Id" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Subject_Name">Subject_Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Subject_Name" name="Subject_Name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                     <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Section_Id">Section_Id<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Section_Id" name="Section_Id"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                        
                          <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Section_Name">Section_Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Section_Name" name="Section_Name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                    
                        
       <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Hours_Per_Week<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Hours_Per_Week" name="Hours_Per_Week" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Days_Per_Week</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Days_Per_Week" name="Days_Per_Week" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">        
                        </div>
                      </div>
                  
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         <center> <button type="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>
                      

                    </form>
                  </div>
                </div>
              </div>
            </div>

        <!-- /page content -->
  
    <%@include file="adminfootersfiles.jsp" %>
 
  </body>
</html>
