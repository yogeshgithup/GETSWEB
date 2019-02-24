<%@page import="data.AddDesignation"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.Person"%>
<%@page import="java.util.HashSet"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Assign Role</title>
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
                <h3>Assign Designation</h3>
              </div>

             
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Designation</h2>
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

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get"action="<%=application.getContextPath()%>/SerAddDesignation" >
      <h>Select User</h>   
      <select  id="person" name="p_id">
           <%              con=(Connection)application.getAttribute("MyConn");
                                  // System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                   //System.out.println("2"+cso);
                               setperson=cso.getPerson();
                              //System.out.println("3"+setperson);
                              Iterator<Person> is=setperson.iterator();
                                //System.out.println("4"+is);
                              while(is.hasNext())
                              {
                                  Person person=is.next();
                                  //System.out.println("67"+person);
                                  
                                %>
                                  
                                
                                  <option value="<%=person.getP_id()%>"><%=person.getP_id()%></option>
                                  <% } %>
          
      </select>                
      <br /> <br />
     <h>Select Designation</h>   
      <select  id="person" name="des_id">
     <%  
                                  // System.out.println("1"+con);
                                   CourseSubSecOperation csd=new CourseSubSecOperation(con);
                                   //System.out.println("2"+cso);
                              HashSet<AddDesignation > setdes_id=csd.getDesignation();
                              //System.out.println("3"+setperson);
                              Iterator<AddDesignation> ioit=setdes_id.iterator();
                                //System.out.println("4"+is);
                              while(ioit.hasNext())
                              {
                                  AddDesignation designation=ioit.next();
                                  //System.out.println("67"+person);
                                  
                                %>
                                  
                                
                                  <% } %>
      </select>
     <br /><br />
      <button type="submit" value="submit" name="submit" class="btn btn-success">Submit</button>
                                  
     <%@include file="adminfootersfiles.jsp" %>
       
      
  </body>
</html>
