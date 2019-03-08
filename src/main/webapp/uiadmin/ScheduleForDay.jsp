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
    <title>Manage Schedule</title>
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
$(document).ready(function(){
    //alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
        //    });
//    
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
                    <h2>Manage Schedule</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerWorkingDays">
            <h3>Select Day</h3>
            <select style="width:25%" id="days" name="days" >
             <%   System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                              HashSet<WorkingDays> setwd=cop.getWorkingDays();                
                              Iterator<WorkingDays> ittt=setwd.iterator();
                          
                                   while(ittt.hasNext())
                              {
                                      WorkingDays wd=ittt.next();
                                  %> 
                                                                 
                                  <option value="<%=wd.getDay_Id()%>"><%=wd.getDay()%></option>
                                  <% } %>
      </select>
      <br /> <br />     

         <h3>Select BreakTime</h3>
            <select style="width:25%" id="days" name="days" >
             <%   System.out.println("1"+con);
                              HashSet<BreakTime> setbt=cop.getBreakTime();                
                              Iterator<BreakTime> btit=setbt.iterator();
                          
                                   while(btit.hasNext())
                              {
                                      BreakTime bt=btit.next();
                                  %> 
                                                                 
                                  <option value="<%=bt.getBreak_Id()%>"><%=bt.getStart_Time()+"-"+bt.getEnd_Time()%></option>
                                  <% } %>
      </select>
      <br /> <br />     

      
            <h3>Appoint Shift</h3>
                           <% 
        HashSet<WorkingShifts> setws=cop.getWorkingShifts();                
                              Iterator<WorkingShifts> mit=setws.iterator();
                                System.out.println("78");
                              while(mit.hasNext())
                              {
                                    System.out.println("82");
                                    WorkingShifts ws=mit.next();
                                           
     %>
                   
     <p style="padding: 5px;">
                          <input type="checkbox" name="shift" id="shift" value="<%=ws.getWs_Id()%>" data-parsley-mincheck="2"   class="flat" /><%=ws.getWs_Id()+")   "+ws.getStart_Time()+"-"+ws.getEnd_Time()%>
                        <br />
                     <p>
<%}%>
                        <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
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
