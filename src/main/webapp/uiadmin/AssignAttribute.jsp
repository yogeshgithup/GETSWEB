<%@page import="java.util.Iterator"%>
<%@page import="data.Person"%>
<%@page import="data.AssignAttribute"%>
<%@page import="operation.CourseSubSecOperation"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
  <head>

    <title>ViewUserDetail</title>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
       
        //    });
//    
$("#submit").click(function()
{
   // alert("helloooooo");
   alen=$("#artlength").val();
   //alert(alen);
   qlen=$("#artlen").val();
   cval="[";
for(i=0;i<parseInt(alen);i++)
{
    colval="[";
    var cs="a"+i;
   
    ctrl=$("."+cs);
    len=ctrl.length;
    for(j=0;j<len;j++)
    {
       
        if(j===0)
        {
        val=$(ctrl[j]).html();
    colval=colval+" \""+val+"\""+","; 
                }
       else
       {
          if(j===(len-1)){
               val=$(ctrl[j]).val();
            colval=colval+" \""+val+"\"";
          }
          else
          {
           val=$(ctrl[j]).val();
            colval=colval+" \""+val+"\""+",";
        }
       }
       
    }
    colval=colval+"],";
     alert(colval);
 cval=cval+colval;
} 
alert(cval);
String c = cval.substring(0, cval.length() - 1);
        
cval=cval+"]";
alert(c);
});

});      

</script>
  <!-- page content -->
<div class="right_col" role="main">
          <div class="">
            
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                   <h2>Assign Attribute</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">  
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
    <div id="msg" align="center" style="color:red">
                        <h3><%=msg%></h3>
               </div>
           
                      <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <!-- start project list -->
                       <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"  method="post">

                    <table class="table table-striped projects">
                      <thead>
                        <tr>
                          <th style="width: 10%">ID</th>
                   <!--//     <th>Name</th>-->
                     
<% //                                  System.out.println("1"+con);
                                   CourseSubSecOperation cso=new CourseSubSecOperation(con);
                                   AssignAttribute aa=(AssignAttribute)session.getAttribute("Attr");
                                   String PA[]=aa.getProfile_Attr();
                                   for(int i=0;i<PA.length;i++)
                                  {
                              %>        
                                    <th class="b<%=i%>"><%=PA[i]%></th>
                              <%        
                                  }
                                %>                         
                        </tr>
                      </thead>
                      <tbody>
                            <%
                                   String P_id[]=aa.getP_id();
                                   for(int j=0;j<P_id.length;j++)
                                   {                                     
                            %>
                                       <tr>
                          <td class="a<%=j%>"><%=P_id[j]%></td>
                           <%
                                  for(int ii=0;ii<PA.length;ii++)
                                  {
                          %>
                          <td>
                          <input type="text" id="ValueAttribute" name="ValueAttribute"  class="a<%=j%>">                                      
                          </td>
                            <%}%>                                      
                         </tr>
                        <%}%>
                      </tbody>
                    </table>
  <input type="hidden" name="artlength" id="artlength" value="<%=P_id.length%>">
 <input type="hidden" name="artlen" id="artlen" value="<%=PA.length%>">
 
                                           
   <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <center> <input type="submit" name="submit" id="submit" class="btn btn-success" value="submit">Submit</button></center>
                        </div>
                      </div>
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
