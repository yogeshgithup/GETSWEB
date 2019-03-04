<!DOCTYPE html>
<html lang="en">
  <head>

    <title>SignUP</title>
    <%@include file="adminHeaders.jsp" %>
  </head>
   <%
session.setMaxInactiveInterval(2);
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
    alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
        //    });
//    
});      

</script>  
 
  <body class="nav-md">
    
  <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>GETS(INSTITUTE NAME)</h3>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  
                    <div class="x_title">
                        <h2><center>Login</center></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                           <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
                 <%session.removeAttribute("msg");%>              
                        <div class="clearfix"></div>
                  </div>
                 
                    <div class="x_content">
                    <br />
                    <form  id="demo-form2" name="frmSample" data-parsley-validate class="form-horizontal form-label-left" method="post" action="<%=application.getContextPath()%>/SerLogin" 
                              >
                        <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Name">Login Id
                        </label>
                        <div class="col-md-5 col-sm-6 col-xs-12">
                          <input type="text" id="LoginId"  name="LoginId" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Password">Password
                        </label>
                        <div class="col-md-5 col-sm-6 col-xs-12">
                            <input type="password" id="Password" name="Password" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                  





  <div id="f2"> </div>
      
<div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-5 col-sm-6 col-xs-12 col-md-offset-3">
                            <center><button type="submit" value="submit" name="submit" class="btn btn-success">Login</button></center>
                        </div>
                      </div>
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
