<%@page import="data.AddDesignation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.Person"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.AddRole"%>
<%@page import="java.util.HashSet"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Assign Designation</title>
  <%@include file="adminHeaders.jsp" %>
    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
    <%@include file="navigation.jsp" %>
    
          <!-- /page content -->
             <div class="right_col" role="main">
          <div class="">
            
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

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerUserRole?id=des">
      <h3>Select User</h3>   
      <select style="width:25%" id="person" name="p_id" multiple>
                               <%   System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                   System.out.println("2"+cso);
                               setperson=cso.getPerson();
                              System.out.println("3"+setperson);
                              Iterator<Person> is=setperson.iterator();
                                System.out.println("4"+is);
                              while(is.hasNext())
                              {
                                  Person person=is.next();
                                  System.out.println("id to be checked       "+person.getP_id());
                                  String checkperson=cso.getselectedperson(person.getP_id(),"userdesignation");
                                  System.out.println(person.getP_id()+"  personnnn   "+checkperson);
                                  if(checkperson==null)
                                  {
                                      System.out.println("in null"+person.getP_id()+person.getF_name()+person.getL_name()+person.getM_name());
                                             
                                  %>                                                                 
                                  <option value="<%=person.getP_id()%>"><%=person.getP_id()%>       <%=person.getF_name()%>      <%=person.getM_name()%>      <%=person.getL_name()%></option>
                                  <% } 
                                  
                                  if(checkperson=="AlotDesignation")
                                  {
                                  %>                                                                 
                                  <option value="<%=person.getP_id()%>"><%=person.getP_id()%>       <%=person.getF_name()%>      <%=person.getM_name()%>      <%=person.getL_name()%></option>
                                  <% }} %>
      </select>
      <br /> <br />
     <h2>Assign Designation</h2>   
      <select style="width:25%" id="des" name="des">
     <%    HashSet<AddDesignation> setdes=cso.getDesignation();
                              System.out.println("31"+setdes);
                              Iterator<AddDesignation> ittt=setdes.iterator();
                                System.out.println("41"+is);
                              while(ittt.hasNext())
                              {
                                  AddDesignation des=ittt.next();
                                  System.out.println("67"+des);
                                  
                                %>
                                  
                                
                                  <option value="<%=des.getDesignation()%>"><%=des.getDesignation()%></option>
                                  <% } %>
      </select>
   
      <button type="submit" value="submit" name="submit" class="btn btn-success">Submit</button>
                                  
  </form>
                  </div>
                </div>
     </div>
            </div>
          </div>
      </div>
      </div>
    </div>
  
   <%@include file="adminfootersfiles.jsp" %>
  </body>
  
  </html>
