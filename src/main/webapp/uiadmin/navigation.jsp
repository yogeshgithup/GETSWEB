<div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="AdminPanel.jsp" class="site_title"><i class="fa fa-paw"></i> <span>GetS</span></a>
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
                      <li><a href="EditLogo.jsp">Edit Logo</a></li>
                      <li><a href="EditInstituteName.jsp">Edit Institute Name</a></li>
                      <li><a href="EditLocation.jsp">Edit Location</a></li>
                      <li><a href="UpdateGallery.jsp">Update Gallery</a></li>
                      <li><a href="EditAboutUs.jsp">Edit AboutUs</a></li>
                      <li><a href="EditContactUs.jsp">Edit ContactUs</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Manage Users Value <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ViewUserDetail.jsp">View User Detail</a></li>
                      <li><a href="role.jsp">Add Role</a></li>
                      <li><a href="Attribute.jsp">Add Attribute</a></li>
                       <li><a href="">Add Designation</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i>Manage Detail<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="AddAttribute.jsp">Profile Attribute</a></li>
                      <li><a href="AddDesignation.jsp">Designation</a></li>
                      <li><a href="AddPriority.jsp">Priority</a></li>
                      <li><a href="AddRole.jsp">Role</a></li>
                       </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Manage Batch<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageSchedule.jsp">Manage Schedule</a></li>
                      <li><a href="AllocateBatch.jsp">Allocate Bacth</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i>Manage WS <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageBreakTime.jsp">Manage Break Time</a></li>
                      <li><a href="ManageWorkingShifts.jsp">Manage Working Shifts</a></li>
                      <li><a href="ManageWorkingDays.jsp">Manage Working Days</a></li>
                      <li><a href="ManageBatchSlotMasters.jsp">Manage Batch slot Masters</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Course<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ManageCourseFees.jsp">Manage Course</a></li>
                      <li><a href="AddCourse.jsp">Add Course</a></li>
                      <li><a href="<%=application.getContextPath()%>/ServletViewCourse?op=view">View Course</a></li>
                      <li><a href="<%=application.getContextPath()%>/ServletViewCourse?op=add">Add SUBJECT SECTION</a></li>
                  
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i>Send Notification<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                      <li><a href="SendIndividual.jsp">Send individual</a></li>
                      <li><a href="SendBatchWise.jsp">send Batch Wise</a></li>
                      <li><a href="SendAll.jsp">Send All</a></li>
                       </ul>
                  <li><a href="Feedbacks.jsp"><i class="fa fa-laptop"></i> Feedbacks </a></li>
                  <li><a href="UpdateMaterial.jsp"><i class="fa fa-edit"></i> Update Material </a>
                  <li><a href="ViewListOfStudents.jsp"><i class="fa fa-table"></i> View List of Students </a>
                  <li><a href="VerifyUsers.jsp"><i class="fa fa-bug"></i> Verify Users </a>
               

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
                    <li><a href="login.jsp"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
      