<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Send All</title>
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
            <div class="page-title">
              <div class="title_left">
               
              </div>

           
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                <h2>Send Notification to All</h2>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post" action="<%=application.getContextPath()%>/SerAllBatch">

                             <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="message">Message
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                              <textarea id="updateaboutus" name="message" class="form-control" rows="6" ></textarea>
                        
                        </div>
                      </div>
                      
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">Cancel</button>
                          <button id="send" type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                  </div>
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
