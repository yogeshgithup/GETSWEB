 <%@page import="data.Person"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.FirstPage"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.Connection"%>
<head>
       <%!
              String path;
              String name;
              String Iname; 
              String quote;
              %>
           
<%
   // HttpSession hs=request.getSession();
//System.out.println("in navigation"+hs.getId()+hs.isNew());
String loginid=(String)session.getAttribute("loginid");
System.out.println("--------------------------------------------------------------------------------"+loginid);
                                 ServletContext ctx=this.getServletContext();
                                   Connection con=(Connection)ctx.getAttribute("MyConn");
                                
                                  CourseSubSecOperation cop=new CourseSubSecOperation(con);
                               HashSet<FirstPage> setfirstpage=cop.getfirstpage();
                               Iterator<FirstPage> it=setfirstpage.iterator();
                                 while(it.hasNext())
                                 {
                                       FirstPage fp=it.next();
                                          Iname=fp.getInstitutename();
                                          quote=fp.getQuote();
                                 }
%>                    
<div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border:0;">
              <a class="site_title"><i class="fa fa-paw"></i> <span><%=Iname%></span></a>
            </div>

<div class="clearfix"></div>
            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
          
              <%
                               HashSet<Person> setperson=cop.getPerson();
                               Iterator<Person> itt=setperson.iterator();
                                 while(itt.hasNext())
                                 {
                                       Person p=itt.next();
                                       System.out.println("------------sessionlogin"+loginid);
                                          System.out.println("emailindatabase"+p.getEmail());
                                          if(p.getEmail().equals(loginid))
                                          {
                                             System.out.println("fileeepathhhhhhhhhh"+p.getFile_path());
                                             path=p.getFile_path();
                                             name=p.getF_name();
%>                    
 <%}}%> 
<img src="<%=path%>" alt="..." height="42" width="42" class="img-circle profile_img">

              </div>
              <div class="profile_info">
                <span>Welcome</span>
                <h2><%=name%></h2>
              </div>
            </div>
            

              <!-- /menu profile quick info -->
            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i>Edit Layouts<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="EditLogo.jsp">Edit Logo</a></li>
                      <li><a href="EditInstituteName.jsp">Edit Institute Name</a></li>
<!--                      <li><a href="EditLocation.jsp">Edit Location</a></li>-->
                      <li><a href="EditGallery.jsp">Update Gallery</a></li>
                      <li><a href="EditAboutUs.jsp">Edit About Us</a></li>
                      <li><a href="EditContactUs.jsp">Edit Contact Us</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Manage Users Value <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="ViewUserDetail.jsp">View User Detail</a></li>
                      <li><a href="<%=application.getContextPath()%>/SerAssignRole">Assign Role</a></li>
                    <!--//   <li><a href="Attribute.jsp">Assign Attribute</a></li>-->
                       <li><a href="AssignDesignation.jsp">Assign Designation</a></li>
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
                      <li><a href="ScheduleForDay.jsp">Manage Schedule</a></li>
                      <li><a href="AllocateBatch.jsp">Allocate Batch</a></li>
                      <li><a href="ViewBatchList.jsp">View Batch List</a></li>
             
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
<!--                      <li><a href="ManageCourseFees.jsp">Manage Course</a></li>-->
                      <li><a href="AddCourse.jsp">Add Course</a></li>
                      <li><a href="<%=application.getContextPath()%>/ServletViewCourse?op=view">View Course</a></li>
                      <li><a href="<%=application.getContextPath()%>/ServletViewCourse?op=add">Add SUBJECT SECTION</a></li>
                      <li><a href="<%=application.getContextPath()%>/ServletViewCourse?op=minus">Add SECTION</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i>Send Notification<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                      <li><a href="SendIndividual.jsp">Send individual</a></li>
                      <li><a href="SendBatchWise.jsp">send Batch Wise</a></li>
                      <li><a href="SendAll.jsp">Send All</a></li>
                       </ul>
                  <li><a href="Feedbacks.jsp"><i class="fa fa-laptop"></i> Feedbacks </a></li>
                  <li><a href="UploadMaterial.jsp"><i class="fa fa-edit"></i> Upload Material </a>
                  <li><a href="ViewListOfStudents.jsp"><i class="fa fa-table"></i> View List of Students </a>
                  <li><a href="VerifyUsers.jsp"><i class="fa fa-bug"></i> Verify Users </a>
               

                </ul>
              </div>

            </div>
          </div>
                      <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.jsp">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          
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
 
                      <img src="<%=path%>" height="42" width="42" alt=""><%=name%>

                      <span class=" fa fa-angle-down"></span>
                  </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="ChangePassword.jsp"> Change Password </a></li>
                    <li>
                      <a href="javascript:;"> Add Email </a>
                    </li>
                    <li><a href=""><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
      