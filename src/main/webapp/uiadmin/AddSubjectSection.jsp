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

    $(document).ready(function(){
    
$("input[type='button']").click(function(){
            var radioValue = $("input[name='radio']:checked").val();
             
        if(radioValue==="section"){
            
            
              
                     $("#f1").append("Section_Id"+" "+"<input type='text' id='Section_Id' name='Section_Id'>").append("Section_Name"+" "+"<input type='text' id='Section_Name' name='Section_name'>"); 
                      var btnsubmit=createButton();
                     $(btnsubmit).click(function(){
                  var course_id= $("#course").val();   
                  var section_id=$("#Section_Id").val();
                  var section_name=$("#Section_Name").val();       
                  location.href="<%=application.getContextPath()%>/SerSection?cid="+course_id+"&section_id="+section_id+"&section_name="+section_name;
                  
           //       alert("Course_id="+course_id+"Section_Id="+section_id+"Section_Name="+section_name);
                                                  });
                     $("#f1").append(btnsubmit);
                    }
        if(radioValue==="subject")
        {
        $("#f1").append("Subject_Id"+" "+"<input type='text' id='Subject_Id' name='Subject_Id'>").append("Subject_Name"+" "+"<input type='text' id='Subject_Name' name='Subject_name'>").append("Hours_per_week"+" "+"<input type='text' id='Hours_per_week' name='Hours_per_week'>").append("Days_per_week"+" "+"<input type='text' id='Days_per_week' name='Days_per_week'>"); 
                     var btnsubmit=createButton();
                     $(btnsubmit).click(function(){
                   var course_id= $("#course").val();   
                    var subject_id=$("#Subject_Id").val();
                    var subject_name=$("#Subject_Name").val();       
                  var hours_per_week=$("#Hours_per_week").val();       
                  var days_per_week=$("#Days_per_week").val();       
          
        location.href="<%=application.getContextPath()%>/SerSubject?cid="+course_id+"&subject_id="+subject_id+"&subject_name="+subject_name+"&hours_per_week="+hours_per_week+"&days_per_week="+days_per_week;
                  
           //       alert("Course_id="+course_id+"Subject_Id="+section_id+"Subject_Name="+section_name);
    });
                     $("#f1").append(btnsubmit);
                    }       
                    
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
                              HashSet<Course> setcourse=(HashSet<Course>)session.getAttribute("setcourse");
                              Iterator<Course> it=setcourse.iterator();
                              while(it.hasNext())
                              {
                                  Course course=it.next();
                                  
                                %>
                                  
                                
                                  <option value="<%=course.getC_id()%>"><%=course.getC_id()%></option>
                                  <% } %>

          
      </select>
      <h4>Is The Course Divided.</h4>
    <p> 
        <label><input type="checkbox" class="flat" name="radio" value="subject">Subject</label> 
        <label><input type="checkbox" class="flat" name="radio" value="section">Section</label>
    </p>
    <p><input type="button" value="Submit"></p>
  
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
