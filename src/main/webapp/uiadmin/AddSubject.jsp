<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="<%=application.getContextPath()%>/uiadmin/images/favicon.ico" type="image/ico" />

    <title>AddSubject</title>

    <!-- Bootstrap -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%=application.getContextPath()%>/uiadmin/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.jsp" class="site_title"><i class="fa fa-paw"></i> <span>GetS</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<%=application.getContextPath()%>/uiadmin/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome</span>
                <h2>Admin</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i>Edit Layouts<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="EditLogo.html">Edit Logo</a></li>
                      <li><a href="EditInstituteName.html">Edit Institue Name</a></li>
                      <li><a href="EditLocation.html">Edit Location</a></li>
                      <li><a href="UpdateGallery.html">Update Gallery</a></li>
                      <li><a href="EditAboutUs.html">Edit AboutUs</a></li>
                      <li><a href="EditContactUs.html">Edit ContactUs</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Manage Users Value <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="p1.html">View User Detail</a></li>
                      <li><a href="AddRole.html">Add Role</a></li>
                      <li><a href="AddAttribute.html">Add Attribute</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i>Manage Detail<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="AddAttribute.html">Profile Atrribute</a></li>
                      <li><a href="media_gallery.html">Designation</a></li>
                      <li><a href="typography.html">Priority</a></li>
                      <li><a href="icons.html">Role</a></li>
                       </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Manage Batch<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageSchedule.html">Manage Schedule</a></li>
                      <li><a href="AllocateBatch.html">Allocate Bacth</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i>Manage WS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageBreakTime.html">Manage Break Time</a></li>
                      <li><a href="ManageWorkingShifts.html">Manage Working Shifts</a></li>
                      <li><a href="ManageWorkingDays.html">Manage Working Days</a></li>
                      <li><a href="ManageBatchSlotMasters.html">Manage Batch slot Masters</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Course<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageCourse.html">Manage Course</a></li>
                      <li><a href="AddCourse.html">Add Course</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i>Send Notification<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                      <li><a href="SendIndividual.html">Send individual</a></li>
                      <li><a href="SendBatchWise.html">send Batch Wise</a></li>
                      <li><a href="SendAll.html">Send All</a></li>
                       </ul>
                  <li><a href="Feedbacks.html"><i class="fa fa-laptop"></i> Feedbacks </a></li>
                  <li><a href="UpdateMaterial.html"><i class="fa fa-edit"></i> Update Material </a>
                  <li><a href="ViewListOfStudents.html"><i class="fa fa-table"></i> View List of Students </a>
                  <li><a href="VerifyUsers.html"><i class="fa fa-bug"></i> Verify Users </a>
               

                </ul>
              </div>

            </div>
            
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li >
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<%=application.getContextPath()%>/uiadmin/images/img.jpg" alt="">Admin
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Change Password </a></li>
                    <li>
                      <a href="javascript:;"> Add Email </a>
                    </li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
        
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>AddSubject</title>

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

 <!-- /page content -->  
   <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>ADD SUBJECT</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 <h2><center>Enter Subject Details</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerSubject">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Subject_Id<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Subject_Id" name="Subject_Id"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Subject_Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Subject_Name" name="Subject_Name"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Hours_Per_Week<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Hours_Per_Week" class="date-picker form-control col-md-7 col-xs-12" name="Hours_Per_Week" type="text">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Days_Per_Week</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Days_Per_Week" class="date-picker form-control col-md-7 col-xs-12" name="Days_Per_Week" type="text">        
                        </div>
                      </div>
                      

                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         <center> <button type="submit" name="submit" value="submit" class="btn btn-success">Submit</button></center>
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
    <!-- Chart.js -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.time.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/moment/min/moment.min.js"></script>
    <script src="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="<%=application.getContextPath()%>/uiadmin/build/js/custom.min.js"></script>
	
  </body>
</html>
