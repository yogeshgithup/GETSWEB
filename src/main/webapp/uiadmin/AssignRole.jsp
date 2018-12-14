
<%@page import="java.sql.Connection"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.Person"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.AddRole"%>
<%@page import="java.util.HashSet"%>
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
                <h3>AssignRole</h3>
              </div>

             
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Role</h2>
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

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post"action="<%=application.getContextPath()%>/SerUserRole">
      <h3>Select User</h3>   
      <select style="width:25%" id="person" name="p_id" multiple>
                               <%  Connection con=(Connection)application.getAttribute("MyConn");
//                                  System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
  //                                 System.out.println("2"+cso);
                              HashSet<Person> setperson=cso.getPerson();
    //                          System.out.println("3"+setperson);
                              Iterator<Person> is=setperson.iterator();
      //                          System.out.println("4"+is);
                              while(is.hasNext())
                              {
                                  Person person=is.next();
        //                          System.out.println("67"+person);
                                  
                                %>
                                  
                                
                                  <option value="<%=person.getP_id()%>"><%=person.getP_id()%></option>
                                  <% } %>
      </select>
      <br /> <br />
     <h2>Assign Role</h2>   
      <select style="width:25%" id="person" name="role_id">
     <%    HashSet<AddRole > setrole=cso.getRole();
                              //System.out.println("31"+setrole);
                              Iterator<AddRole> it=setrole.iterator();
                                //System.out.println("41"+is);
                              while(it.hasNext())
                              {
                                  AddRole role=it.next();
                                  //System.out.println("67"+role);
                                  
                                %>
                                  
                                
                                  <option value="<%=role.getrole_id()%>"><%=role.getrole_id()%></option>
                                  <% } %>
      </select>
     <br /><br />
      <button type="submit" value="submit" name="submit" class="btn btn-success">Submit</button>
                                  
     <%@include file="adminfootersfiles.jsp" %>
       
      
  </body>
</html>
