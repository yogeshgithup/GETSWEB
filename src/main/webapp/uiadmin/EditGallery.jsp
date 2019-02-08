<%@page import="data.pictures"%>
<%@page import="data.FirstPage"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="data.AddDesignation"%>
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
    <title>Update Gallery</title>
   <%@include file="adminHeaders.jsp" %>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

 <script>
function createImage(name,id)
{
      var ctrl=$("<input/>").attr({type:'file',id:'file',value:'file',class:'date-picker form-control col-md-7 col-xs-12'});
   return ctrl;
}
</script>
<script>
//alert("3");

    $(document).ready(function(){
     alert("4");
     c=0;
    
$("#submit").click(function(){
    c=c+1;
        
        ctrl=createImage('name'+c,'id'+c);
        $("#mydiv").append(ctrl);
    });
    });
        </script>
    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
     <%//HttpSession hs=request.getSession();%>
           <%@include file="navigation.jsp" %>
 
          
   <%
//session.setMaxInactiveInterval(2);
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
                    <h2>Edit Gallery</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                              <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
             
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form enctype="multipart/form-data" id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    <section cleeyass="gallery-area section-gap">
                         <div id="mixit-container" class="aa-gallery-body">
                     <div class="aa-single-gallery mix apartment">                  
               <div class="aa-single-gallery-item">
                 
                    <div class="aa-single-gallery-img">
               
                             <!-- start single gallery image -->
               <%
               System.out.println("entrypic");
                             HashSet<pictures> setpictures=cop.getimages();
System.out.println("entrypic"+setfirstpage);                      
                             Iterator<pictures> ittt=setpictures.iterator();
System.out.println("entrpic"+it);                            
                             while(ittt.hasNext())
                              {
                                  pictures p=ittt.next();
                           
%>                 
<a href="#"  style="padding-left: 30px; padding-bottom: 30px;"> <img src="<%=p.getImagepath()%>" vspace="20" width="100px" height="100px" alt="img"></a>
                <% }%>               
                    </div>
<!--                    <div class="aa-single-gallery-info">
                   <a class="fancybox" data-fancybox-group="gallery" href="">
                      <a class="aa-link" href="#"><span class="fa fa-link"></span></a>
                    </div>-->
 </div>
                </div>
                  
                
                         </div>
			</section>                     
                     <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Add Image<span class="required">
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12" id="mydiv">
                         </div>
                      </div>
                      <br/>
                 
                    </form>
                        <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button type="submit"  name="Add Image" id="submit" class="btn btn-success">Add Image</button>
                            
                          <button type="submit"  name="submit" id="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>

                  </div>
                </div>
              </div>
            </div>

        <!-- /page content -->
  
      </div>
    </div>

     
     <%@include file="adminfootersfiles.jsp" %>
 
 

  </body>
</html>
