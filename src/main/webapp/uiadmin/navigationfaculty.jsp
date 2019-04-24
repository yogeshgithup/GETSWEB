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
                    
                  <li><a><i class="fa fa-desktop"></i>Send Notification<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                      <li><a href="SendIndividualStaff.jsp">Send individual</a></li>
                      <li><a href="SendBatchWiseStaff.jsp">send Batch Wise</a></li>
                      <li><a href="SendAllStaff.jsp">Send All</a></li>
                       </ul>
                  </li>
                 <li><a><i class="fa fa-laptop"></i>FeedBacks<span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                      <li><a href="FeedbackWeb.jsp">Give FeedBack</a></li>
                      <li><a href="Feedbacksstaff">View FeedBack</a></li>
                       </ul>
                  </li>
                  <li><a href="EnterMarksStaff.jsp"><i class="fa fa-table"></i> Enter Marks </a></li>
                 
                  
                  
                  <li><a href="ViewCourseStaff"><i class="fa fa-clone"></i>View Course</a></li>                    
                  <li><a href="UploadMaterialStaff.jsp"><i class="fa fa-edit"></i> Upload Material </a></li>
                  <li><a href="ViewListOfStudentsStaff.jsp"><i class="fa fa-table"></i> View List of Students </a></li>
                  <li><a href="ViewTimeTable.jsp"><i class="fa fa-bug"></i> View Time Table </a></li>
               

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
      