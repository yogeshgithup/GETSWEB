<%@page import="data.Course"%>
<%@page import="data.WorkingDays"%>
<%@page import="data.WorkingShifts"%>
<%@page import="data.BreakTime"%>
<%@page import="data.BatchSlotMaster"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddAttribute"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Allocate Batch</title>
    <%@include file="adminHeaders.jsp" %>
 
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
             
       
    <%@include file="navigation.jsp" %>
  <%
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
                        alert(data) ;
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
      
       $("#course").focusout(function(){
         $('#student').empty();
        var n= $("#course option:selected").val();  
  //alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetStudentbycourse?id="+n,function(data,status){
                        alert(data) ;
                     obj=JSON.parse(data);
//                  alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
    //                 alert(obj[i]);
                          $('#student')
         .append($("<option></option>")
                     .attr("value",obj[i].p_id)
                    .text(obj[i].p_fname));
                   }
                  
   });       
              
     });
    
    
 $("#subject").focusout(function(){
         $('#batch').empty();
        var n= $("#subject option:selected").val();  
//  alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetbatchbysubject?id="+n,function(data,status){
                      //alert("1"+data) ;
                     obj=JSON.parse(data);
                     
//                     alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
                          $('#batch')
         .append($("<option></option>")
                     .attr("value",obj[i].batch_id)
                    .text(obj[i].batchname));
                   }
                  
   });       
               
     });
  
           
           
    });  

   
   
</script>

 <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
             <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                   <div class="x_title">
                    <h2>Allocate Student</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                      <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
                    </div> 
<%session.removeAttribute("msg");%>
                    <div class="clearfix"></div>
                  </div>
                   <div class="x_content">
                    <br /> 
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" >
            <h3>Select Course</h3>
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
      </br></br>
<div class="form-group">
                     
          
      </br></br>
      <h2>Select Student</h2> 
                             <select id="student" name="student">
                                 <% 
                                   
                                 %> 
                             </select>
      </br></br>

      <h2>Select Batch</h2> 
                             <select id="batch" name="batch">
                                 <% 
                                   
                                 %> 
                             </select> 
      
      </div>
                     
                     <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="button" id="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                    </form>
                        

                  </div>
                </div>  
              </div>
            </div>
  <!-- /page content -->
      
      </div>
    </div>
      </div>
                      </div>
</body>
  
     <%@include file="adminfootersfiles.jsp" %>
           
      
  
</html>
 
