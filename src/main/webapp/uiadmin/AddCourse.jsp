
<!DOCTYPE html>
<html lang="en">
  <head>

    <title>AddCourse</title>
    <%@include file="adminHeaders.jsp" %>

  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">

            <%@include file="navigation.jsp" %>
           
        <!-- /page content -->
 <%
session.setMaxInactiveInterval(2);
HttpSession hs=request.getSession();
String msg=(String)hs.getAttribute("msg");
                    if(msg!=null)
                    {
                 //      out.println(msg);
                    }
                  else if(msg==null)
                {
                    msg="";
              }
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

 
 </script> 
          <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>ADD COURSE</h3>
              </div>

            </div>
               <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
               </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                 <h2><center>Enter Course Details</center></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="get" action="<%=application.getContextPath()%>/SerCourse" >

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Course_Id">Course_Id<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Course_Id" name="Course_Id"  class="form-control col-md-7 col-xs-12"
                                 >
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Course_Name">Course_Name<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Course_Name" name="Course_Name"  class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Course_fees</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Course_fees" name="Course_fees" class="form-control col-md-7 col-xs-12">  
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Duration<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Duartion" name="Duration" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                      </div>

                         <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Hours_Per_Week<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Hours_Per_Week" name="Hours_Per_Week" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                      </div>
                   
                      <div class="form-group">
                        <label for="middle-name" class="control-label col-md-3 col-sm-3 col-xs-12">Days_Per_Week</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Days_Per_Week" name="Days_Per_Week" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">        
                        </div>
                      </div>
<!--                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Is Your Course Divided Into Subject Or Section</label>
                         <div class="radio">
                            <label>
                              <input type="radio" class="flat" checked name="radio" value="Yes"> Yes
                            </label>
                          </div>
                          <div class="radio">
                            <label>
                              <input type="radio" class="flat" name="radio" value="No" > No
                            </label>
                          </div>
                       </div>-->
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                         <center> <button type="submit" name="submit" class="btn btn-success" value="submit">Submit</button></center>
                        </div>
                      </div>

                    </form>
                  
                </div>
             
           
        <!-- /page content -->
   </div>
            </div>

   <%@include file="adminfootersfiles.jsp" %>
 
  </body>
</html>
