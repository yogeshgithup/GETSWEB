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
    <title>Assign Role</title>
  <%@include file="adminHeaders.jsp" %>
 


    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
    
            <%@include file="navigation.jsp" %>
 <%
session.setMaxInactiveInterval(2);
String msg=(String)session.getAttribute("msg");
                    if(msg!=null)
                    {
                 //      out.println(msg);
                    }
                  else if(msg==null)
                {
                    msg="";
              }
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    //alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
        //    });
//    
});      

</script>  
          <!-- /page content -->
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
                  <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
               </div>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerUserRole">
      <h3>Select User</h3>   
      <select style="width:25%" id="person" name="p_id" multiple>
                               <%   System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
  //                                 System.out.println("2"+cso);
                               setperson=cso.getPerson();
    //                          System.out.println("3"+setperson);
                              Iterator<Person> is=setperson.iterator();
      //                          System.out.println("4"+is);
                              while(is.hasNext())
                              {
                                  Person person=is.next();
        //                          System.out.println("67"+person);
                                  
                                %>
                                  
                                
                                  <option value="<%=person.getP_id()%>"><%=person.getP_id()%>       <%=person.getF_name()%>      <%=person.getM_name()%>      <%=person.getL_name()%></option>
                                  <% } %>
      </select>
      <br /> <br />
     <h2>Assign Role</h2>   
      <select style="width:25%" id="person" name="role">
     <%    HashSet<AddRole > setrole=cso.getRole();
                              System.out.println("31"+setrole);
                              Iterator<AddRole> ittt=setrole.iterator();
                                System.out.println("41"+is);
                              while(ittt.hasNext())
                              {
                                  AddRole role=ittt.next();
                                  System.out.println("67"+role);
                                  
                                %>
                                  
                                
                                  <option value="<%=role.getRole()%>"><%=role.getRole()%></option>
                                  <% } %>
      </select>
      
     <br /><br />      
     <label>Select Attribute:</label>  

     <% 
                                           System.out.println("100");
                                       ArrayList<String> ar=(ArrayList<String>)session.getAttribute("setAttr");
                                           System.out.println("103"+ar);
                                         
                                       for (int i = 0; i < ar.size(); i++) 
                                        {
                                            System.out.println("103");
                                        
     %>
                   
     <p style="padding: 5px;">
                          <input type="checkbox" name="Pattr" id="Pattr" value="<%=ar.get(i)%>" data-parsley-mincheck="2"   class="flat" /><%=ar.get(i)%>
                        <br />
                     <p>
<%}%>
      <button type="submit" value="submit" name="submit" class="btn btn-success">Submit</button>
                                  
     <%@include file="adminfootersfiles.jsp" %>
       
      
  </body>
</html>
