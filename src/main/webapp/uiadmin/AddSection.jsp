<%@page import="data.Subject"%>
<%@page import="data.Course"%>
<!DOCTYPE html>
<html lang="en"> 
  <head>
    <title>Add Section</title>
    <%@include file="adminHeaders.jsp" %>

  </head>
<script>
    $(document).ready(function() {
//     alert("hello");
     $("#course").focusout(function(){
         $('#subject').empty();
        var n= $("#course option:selected").val();  
  alert(n);  
   $.post("<%=application.getContextPath()%>/SerGetSubject?id="+n,function(data,status){
                        alert(data) ;
                     obj=JSON.parse(data);
//                  alert(obj.length);
                      for(i=0;i<obj.length;i++)
                      {
                     alert(obj[i]);
                          $('#subject')
         .append($("<option></option>")
                     .attr("value",obj[i].sub_id)
                    .text(obj[i].sub_name));
                   }
                  
   });       
              
     });
        
       });
   
</script>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
             <%@include file="navigation.jsp" %>
       
 <!-- /page content -->  
  <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>ADD Section</h3>
              </div>

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 <h2><center>Enter Section Details</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerSection">
                             <h>Select Course</h>   
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
                             <h>Select Subject</h>
                             <select id="subject" name="subject">
                                 <% 
                                   
                                 %> 
                             </select>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Section_Id">Section_Id
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Section_Id" name="Section_Id"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Section_Name">Section_Name
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Section_Name" name="Section_Name" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                    
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         <center> <button type="submit" name="submit" value="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>

           <%@include file="adminfootersfiles.jsp" %>
 
 
  </body>
</html>
