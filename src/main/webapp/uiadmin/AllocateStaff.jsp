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

<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONTokener"%>
<%@page import="org.json.JSONArray"%>
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
  
     
  var j="[";
  var d=0;
  $("#addnextcourse").click(function(){
       d++;
        var co= "\"course\":\""+$("#course option:selected").val()+"\"";  
        var sub= "\"subject\":\""+$("#subject option:selected").val()+"\"";  
      alert("co--"+co+"sub---"+sub);      
      if(d===1)
      {
        var jsondata="{";
      jsondata=jsondata+co+","+sub+"}";
      alert(jsondata);
    
        j=j+jsondata;
      alert("j----"+j);
         $('#subject').empty();
       
       // $("#day option[value='"+$("#day option:selected").val()+"']").remove();
       }
       else
       {
          var jsondata=",{";
      jsondata=jsondata+co+","+sub+"}";
      alert(jsondata);
    
        j=j+jsondata;
      alert("jsonarray----"+j);
         $('#subject').empty();
    //     $('#slot').empty();
       
  //      $("#day option[value='"+$("#day option:selected").val()+"']").remove();
           
       }    
  });   
     
     
  var jarray="[";
  var c=0;
  $("#addnextday").click(function(){
       c++;
        var d= "\"Day\":\""+$("#day option:selected").val()+"\"";  
        var sh= "\"shift\":\""+$("#shift option:selected").val()+"\"";  
      alert("n--"+d+"nn---"+sh);      
      if(c===1)
      {
        var jsondata="{";
      jsondata=jsondata+d+","+sh+"}";
      alert(jsondata);
    
        jarray=jarray+jsondata;
      alert("jsonarray----"+jarray);
         $('#shift').empty();
       
        $("#day option[value='"+$("#day option:selected").val()+"']").remove();
       }
       else
       {
          var jsondata=",{";
      jsondata=jsondata+d+","+sh+"}";
      alert(jsondata);
    
        jarray=jarray+jsondata;
      alert("jsonarray----"+jarray);
         $('#shift').empty();
         
        $("#day option[value='"+$("#day option:selected").val()+"']").remove();
           
       }    
  });
var mainarray="[";
  $("#submit").click(function(){
     
        var f= "\"Staff\":\""+$("#fac option:selected").val()+"\"";  
        var araaayy= "\"days\":"+jarray;
        var ar="\"coursesubject\":"+j;
           var jsonupardata="{"+f+","+ar+"]"+","+araaayy+"]"+"}";
           mainarray=mainarray+jsonupardata+"]";
           alert("mainarray------"+mainarray);
           
           $.ajax( {
                   url:'http://localhost:8084/GETSWEB/SerAllocateStaff?data='+mainarray,
                  success:function(data) {
                     alert("data"+data);
                    
                          
    },
    error:function(data) {
                     alert("error"+data);
                    
                          
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
                    <h2>Allocate Batch</h2>
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
                        <div class="col-lg-12">
                            <div class="col-lg-6">
 
               <h3>Select Faculty</h3>
      <select  id="fac" name="fac ">
          <%
          JSONArray ja=cop.getfaculty();
                               JSONTokener js=new JSONTokener(ja.toString());
                                   JSONArray jaa=(JSONArray)js.nextValue();
                                 System.out.println("89");
                         
                                    System.out.println("ja.length()"+ja.length());
                            for(int i=0;i<ja.length();i++)
                            {  
                                   JSONObject obj=(JSONObject)jaa.getJSONObject(i);
                              %>
                         
                                  <option value="<%=obj.getString("p_id")%>"><%=obj.getString("f_name")%></option>
                                 
                                  <% } %>

      </select>
  </br></br>
                                     
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
      </br></br>
              <button type="button" id="addnextcourse" name="addnextcourse" class="btn btn-success">Add Course</button>
      
                   </div>
      <div class="col-lg-6">
<div class="form-group">
                     
                  <h3>Select Day</h3>
      <select  id="day" name="day" class="ct">
                                <%
                                 HashSet<WorkingDays> setdays=(HashSet<WorkingDays>)cop.getWorkingDays();
                              Iterator<WorkingDays> wit=setdays.iterator();
                                  System.out.println("3");
                 
                              while(wit.hasNext())
                              {
                                  WorkingDays days=wit.next();
                                  
                                %>
                                  
                                
                                  <option value="<%=days.getDay_Id()%>"><%=days.getDay()%></option>
                                  <% } %>
      </select>
      </br></br>
      <h2>Select Shift</h2> 
                             <select id="shift" name="shift">
                                 <% 
                                   
                                 %> 
                             </select>
      </br></br>

      </br></br>  
                          <button type="button" id="addnextday" name="addnextday" class="btn btn-success">Add Day</button>
      
      </div>
                   </div>
                             </div>
                             </br></br>
                     <div class="form-group">
                         
                         <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                             </br>
                
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
 