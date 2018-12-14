<!DOCTYPE html>
<html lang="en">
  <head>
   
    <title>Yes Or No</title>
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
                <h3>Select Subject Or Section</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 <h2><center>Enter Your Choice</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerSelection">
                     
                      <p style="padding: 5px;">
                        <input type="checkbox" name="Check" id="Subject" value="Subject"   class="flat" /> Subject
                        

                        <input type="checkbox" name="Check1" id="Section" value="Section" class="flat" /> Section
                        <p>
                     
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
