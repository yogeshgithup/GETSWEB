<%@page import="data.Course"%>
<%@page import="data.AddDesignation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.Person"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.AddRole"%>
<%@page import="java.util.HashSet"%>

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="org.json.JSONArray"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Appoint Batch</title>
  <%@include file="adminHeaders.jsp" %>
    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
    <%@include file="navigation.jsp" %>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
 <script>
    $(document).ready(function() {
//     alert("hello");
       $('#msg').fadeOut(5000);
      var m="";
       $("#course").focusout(function(){
         $('#subject').empty();
        var n= $("#course option:selected").val();  
  //alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetSubject?id="+n,function(data,status){
      //                  alert(data) ;
                     obj=JSON.parse(data);
//                  alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
    //                 alert(obj[i]);
                          $('#subject')
         .append($("<option></option>")
                     .attr("value",obj[i].sub_id)
                    .text(obj[i].sub_name));
                   }
                  
   });       
              
     });
      
       $("#subject").focusout(function(){
         $('#fac').empty();
        var n= $("#subject option:selected").val();  
  //alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetUserBySubject?id="+n,function(data,status){
                        alert(data) ;
                     obj=JSON.parse(data);
//                  alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
    //                 alert(obj[i]);
                          $('#fac')
         .append($("<option></option>")
                     .attr("value",obj[i].p_id)
                    .text(obj[i].fname));
                   }
                  
   });       
              
     });
    
       $("#fac").focusout(function(){
         $('#batch').empty();
        var n= $("#fac option:selected").val();  
  //alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetbatchbyuser?id="+n,function(data,status){
                        alert(data) ;
                     obj=JSON.parse(data);
//                  alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
    //                 alert(obj[i]);
                          $('#batch')
         .append($("<option></option>")
                     .attr("value",obj[i].batch_id)
                    .text(obj[i].batch_name));
                   }
                  
   });       
              
     });
     

    }); 
   
</script>

          <!-- /page content -->
             <div class="right_col" role="main">
          <div class="">
            
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                         <h2>Appoint batch</h2>
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
      
      <h2>Select Course</h2>
      <select  id="course" name="course">
                                <%                     
                                HashSet<Course> setcourse=(HashSet<Course>)cop.getCourse();
                              Iterator<Course> ittt=setcourse.iterator();
                                  System.out.println("3");
                 
                              while(ittt.hasNext())
                              {
                                  Course course=ittt.next();
                                  
                                %>
                                  
                                
                                  <option value="<%=course.getC_id()%>"><%=course.getC_name()%></option>
                                  <% } %>
      </select>
      </br></br>
      <h2>Select Subject</h2>
                             <select id="subject" name="subject">
                                 <% 
                                                          
                                 %> 
                             </select>
      
      
      <h3>Select User</h3>   
 <select  id="fac" name="fac ">
<%
%>
      </select>
      
      <h2>Select Batch</h2>
      <select  id="batch" name="batch">
<%
 
%>
 
 
 </select>
      
      <br /> <br />

   
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
