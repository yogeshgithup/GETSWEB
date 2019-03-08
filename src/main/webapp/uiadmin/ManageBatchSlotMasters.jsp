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
    <title>Manage Batch Slot Masters</title>
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
                    <h2>Batch Slot Master</h2>
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
                    <%String wsid=(String)session.getAttribute("wsid");%>
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerBatchSlottMaster?wsid=<%=wsid%>">

                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Start Time
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="time" id="starttime" name="starttime"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">End Time
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="time" id="endtime" name="endtime"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <center><button type="submit" name="submit" class="btn btn-success">Submit</button></center>
                        </div>
                      </div>

                    </form>
                                        <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th>Slot_Id</th>
                          <th>Start Time</th>
                          <th>End Time</th>                    
                        </tr>
                      </thead>
                      <tbody>
     <%
                              HashSet<BatchSlotMaster> setBSM=cop.getBacthSlotMaster();
              
                              Iterator<BatchSlotMaster> ittt=setBSM.iterator();
                                System.out.println("78");
                              while(ittt.hasNext())
                              {
                                    System.out.println("82");
                                    BatchSlotMaster bsm=ittt.next();
                                %>
                          <tr>
                          <td><%=bsm.getSlot_Id()%>
                          </td>
                          <td><%=bsm.getStart_Time()%>
                          </td>
                          <td><%=bsm.getEnd_Time()%>
                          </td>
                         
                          <td>
                            <a href="<%=application.getContextPath()%>/SerDelete?id=<%=bsm.getSlot_Id()%>&id1=deleteslot" class="btn btn-danger btn-xs"  ><i class="fa fa-trash-o"></i> Delete </a>
                          </td>
                        </tr>
                        
  <%}%>
                      </tbody>
                    </table>
   

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
