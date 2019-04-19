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
    <title>Upload Material</title>
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
 


 <script>
    $(document).ready(function() {
//     alert("hello");
       $('#msg').fadeOut(5000);
  
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
     
    $("#day").focusout(function(){
         $('#shift').empty();
        var n= $("#day option:selected").val();  
//  alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetShift?id="+n,function(data,status){
                      //alert("1"+data) ;
                     obj=JSON.parse(data);
                     
//                     alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
                          $('#shift')
         .append($("<option></option>")
                     .attr("value",obj[i].ws_id)
                    .text(obj[i].start_time+"-"+obj[i].end_time));
                   }
                  
   });       
              
     });
  
 $("#shift").focusout(function(){
         $('#slot').empty();
        var n= $("#shift option:selected").val();  
//  alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetSlot?id="+n,function(data,status){
                      //alert("1"+data) ;
                     obj=JSON.parse(data);
                     
//                     alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
                          $('#slot')
         .append($("<option></option>")
                     .attr("value",obj[i].slot_id)
                    .text(obj[i].start_time+"-"+obj[i].end_time));
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
                    <h2>Upload Material</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerAllocateBatch">
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Upload Material">Upload Material
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="file" id="Upload Material" name="Upload Material"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
      
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                    
<div class="form-group">
                     
                

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
 