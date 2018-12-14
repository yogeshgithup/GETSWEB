<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>FirstPage</title>

    <!-- Bootstrap -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=application.getContextPath()%>/uiadmin/build/css/custom.min.css" rel="stylesheet">
  </head>
  <body>
 <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_center">
               <center> <h3>GENERIC E-SYSTEM FOR TRAINING INSTITUTE</h3></center>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title_center">
                 <h2>ADD INSTITUTE DETAILs</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerFirstPage">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Institute Name
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="institutename" name="institutename"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">LOGO
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="image" name="image" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                        
                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Images
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="pic" name="pic"  class="form-control col-md-7 col-xs-12">
                        </div>
                  
                         </div>

                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="pic" name="pic"  class="form-control col-md-7 col-xs-12">
                        </div>
                  
                         </div>
                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="pic" name="pic"  class="form-control col-md-7 col-xs-12">
                        </div>
                  
                         </div>

                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">About US</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea id="aboutus" name="aboutus" class="form-control" rows="6" ></textarea>
                        </div>
                      </div>
                        
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Contact Number
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="contactnumber" name="contactnumber" class="date-picker form-control col-md-7 col-xs-12"  type="text">
                        </div>
                      </div>

                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">E-mail
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="email" name="email" class="date-picker form-control col-md-7 col-xs-12"  type="text">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">ADDRESS</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                       <textarea id="address" name="address" class="form-control" rows="3" ></textarea> 
                        </div>
                      </div>
                    
                        <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Quote</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                       <textarea id="quote"  name="quote" class="form-control" rows="3" ></textarea> 
                        </div>
                      </div>
                    

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            
                            <center><button type="submit" value="submit" name="submit" class="btn btn-success">Add Admin Details</button></center>
                        </div>
                      
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>

           
        <!-- /page content -->
  <!-- jQuery -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/moment/min/moment.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/switchery/dit/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="<%=application.getContextPath()%>/uiadmin/build/js/custom.min.js"></script>
  
          </body>
</html>

      