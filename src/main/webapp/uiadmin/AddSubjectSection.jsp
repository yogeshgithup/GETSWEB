<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="data.Course"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>AddSubjectSection</title>
  <%@include file="adminHeaders.jsp" %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

 <script>
function createButton()
{
      var ctrl=$("<input/>").attr({type:'button',id:'btnsubmit',value:'submit'});
   return ctrl;
}
</script>
<script>
//alert("3");

    $(document).ready(function(){
     alert("4");
    
$("#submit").click(function(){
        alert("4");

        var radioValue = $("input[name='radio']:checked").val();
             alert("5"+radioValue);

        if(radioValue==="section"){
            
            
              
                     $("#f1").append("Section_Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<input type='text' id='Section_Id' name='Section_Id'>"+"<br><br>").append("Section_Name&nbsp;&nbsp;"+" "+"<input type='text' id='Section_Name' name='Section_name'>"+"<br><br>"); 
                      var btnsubmit=createButton();
                     $(btnsubmit).click(function(){
                  var course_id= $("#course").val();   
                  var section_id=$("#Section_Id").val();
                  var section_name=$("#Section_Name").val();       
                  location.href="<%=application.getContextPath()%>/SerSection?cid="+course_id+"&section_id="+section_id+"&section_name="+section_name;
                  
           //       alert("Course_id="+course_id+"Section_Id="+section_id+"Section_Name="+section_name);
                                                  });
                     $("#f1").append(btnsubmit);
                     $("#f1").append("<br><br>");
                    }
        if(radioValue==="subject")
        {
        $("#f1").append("Subject_Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<input type='text' id='Subject_Id' name='Subject_Id'>"+"<br><br>").append("Subject_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+"<input type='text' id='Subject_Name' name='Subject_name'>"+"<br><br>").append("Hours_per_week&nbsp;&nbsp;"+"<input type='text' id='Hours_per_week' name='Hours_per_week'>"+"<br><br>").append("Days_per_week&nbsp;&nbsp;&nbsp;"+"<input type='text' id='Days_per_week' name='Days_per_week'>"+"<br><br>"); 
                     var btnsubmit=createButton();
                     $(btnsubmit).click(function(){
                   var course_id= $("#course").val();   
                    var subject_id=$("#Subject_Id").val();
                    var subject_name=$("#Subject_Name").val();       
                  var hours_per_week=$("#Hours_per_week").val();       
                  var days_per_week=$("#Days_per_week").val();       
          
        location.href="<%=application.getContextPath()%>/SerSubject?cid="+course_id+"&subject_id="+subject_id+"&subject_name="+subject_name+"&hours_per_week="+hours_per_week+"&days_per_week="+days_per_week;
                  
                 alert("Course_id="+course_id+"Subject_Id="+section_id+"Subject_Name="+section_name);
    });
                     $("#f1").append(btnsubmit);
                     $("#f1").append("<br><br>");
                               
}       
                    
                    });
                    
        });       
       
            
            
            
            
            
            
            
            
            
            
            
            
            
            
  


</script>


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
                <h3>AddSubjectSection</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Add Subject & Section</h2>
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

                                            
  <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get"  >
      <h>Select Course</h>   
      <select  id="course" name="course">
        
  
                      <%
                      System.out.println("1");
                              HashSet<Course> setcourse=(HashSet<Course>)session.getAttribute("setcourse");
                      System.out.println("2"+setcourse);
                             
                              Iterator<Course> ittt=setcourse.iterator();
                                  System.out.println("3");
                 
                              while(ittt.hasNext())
                              {
                                  Course course=ittt.next();
                                  
                                %>
                                  
                                
                                  <option value="<%=course.getC_id()%>"><%=course.getC_id()%></option>
                                  <% } %>

          
      </select>
      <h4>Is The Course Divided.</h4>
    <p>  
        <label><input type="checkbox" class="flat" name="radio" value="subject">Subject</label> 
        <label><input type="checkbox" class="flat" name="radio" value="section">Section</label>
    </p>
    <p><input type="button" name="submit" id="submit" value="submit"></p>
  
    <div id="f1"> </div>
         
  
<!--        <div class="form-group">
                         <div class="radio">
                            <label>
                              <input type="radio" class="flat" id="subject" name="radio" value="subject"> Subject
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" id="section" name="radio" value="section" > Section
                            </label>
                          </div>
                 <input type="button" class="flat" id="submit" name="submit" value="submit" >
                                  
        </div>
             -->
      
  </form>              
                                         </div>
                </div>
              </div>
            </div>
   
      </div>
    </div>

                                  
      <!-- /page content -->
     
                                  
     <%@include file="adminfootersfiles.jsp" %>
       
      
  </body>
</html>
