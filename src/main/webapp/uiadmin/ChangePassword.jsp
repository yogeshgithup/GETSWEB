<!DOCTYPE html>
<html lang="en">
  <head>

    <title>ChangePassword</title>
    <%@include file="adminHeaders.jsp" %>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
     <%@include file="navigation.jsp" %>
       
   <%
   session.setAttribute(loginid, session.getAttribute("loginid"));
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
                 <h2><center>Enter New Password</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
               <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
               </div>
               <%session.removeAttribute("msg");%>

                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerChangePassword">
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Enter_Current_Password">Enter Current Password
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Enter_Current_Password" name="Enter_Current_Password"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="New_Password">New Password
                        </label>
                         <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="New_Password" name="New_Password" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                     <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Re-Enter_Password">Re-Enter Password
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Re-Enter_Password" name="Re-Enter_Password" class="form-control col-md-7 col-xs-12">
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

  <!-- /page content -->
  


    <%@include file="adminfootersfiles.jsp" %>
 
  </body>
</html>
