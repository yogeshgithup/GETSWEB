	<%@page import="data.Course"%>
        <%@page import="org.json.JSONArray"%>"
<%@page import="org.json.JSONTokener"%>"
<%@page import="org.json.JSONObject"%>"


<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	          <head>
                		<title>Homepage</title>
                                   <script>
                                       
                                       </script>
                                 <%@include file="homepageheaders.jsp" %>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    alert("1");
  $("#mybtn").click(function(){
    $("#myModal").slideDown("slow");
  });
});
</script>
            
                  </head>
	            
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								 Courses		
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span> Courses</p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start popular-courses Area --> 
			<section class="popular-courses-area section-gap courses-page">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Courses we offer</h1>
								<p>There is a moment in the life of any aspiring.</p>
							</div>
						</div>
					</div>						
	<div class="row">
                                        
          <%
                                  System.out.println("75");
                              HashSet<Course> setcourse=cop.getCourse();
                              System.out.println("77"+setcourse);
                              Iterator<Course> itt=setcourse.iterator();
                                System.out.println("78"+itt);
                              while(itt.hasNext())
                              {
                                    System.out.println("82");
                                  Course course=itt.next();
                                %>
        
						<div class="single-popular-carusel col-lg-3 col-md-6">
              <a class="primary-btn" id="mybtn" value="myModal"  href="<%=application.getContextPath()%>/SerSetCourse?iid=<%=course.getC_id()%>" ><%=course.getC_name()%></a>                    	                                            
                                            
      
                                                        <div class="modal fade" id="myModal" role="dialog">
                                                            <div class="modal-dialog">
                                                                 <div class="modal-content">
                                                                     <div class="modal-header"></div>
                                                                         <div class="modal-body">
                                                                               <div class="modal-header">
        <% 
   JSONArray ja=(JSONArray)session.getAttribute("ja");
   System.out.println("dgsgsdfsdfsdf"+ja+"fsdfdsfdsfsdf"+ja);
       
   JSONTokener js=new JSONTokener(String.valueOf(ja));
   System.out.println("dgsgsdfsdfsdf"+ja+"fsdfdsfdsfsdf"+ja);
           
   JSONArray jaa=(JSONArray)js.nextValue();
                JSONObject obj=(JSONObject)jaa.getJSONObject(0);
                %>
                <h4 class="modal-title">Course Name :- <%=obj.getString("c_name")%>Course Id:-<%=obj.getString("c_id")%></h4>
          </div>
          <div>  
                                                      
              <p>
                  <b> Course Fees:- <%=obj.getInt("c_fees")%> </b>
            </p>
            <p>
                <b> Course duration:-  <%=obj.getInt("duration")%></b>
            </p>
            <p>
                <b> Hours_per_week:-  <%=obj.getInt("hpw")%></b>
            </p>
            <p>
                <b>  Days_per_week:- <%=obj.getInt("dpw")%> </b>
            </p>
      </div>
    
                                                                         </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
 
    </div>
  </div>
                                                    	

                                                </div>
					 
		<%}%>	
                                    </div>
                                </div>	
			</section>
               
      <!--<script src="<%=application.getContextPath()%>/uiadmin/vendors/jquery/dist/jquery.min.js"></script>-->
<!--<script>
$(document).ready(function(){
     alert("1");
     $(".primary-btn").click(function(){
      var x=$(this).attr('value');
       alert("bjh  "+x);
       $("#"+x).slideDown();
 
});
});
 

</script>-->
		 <%@include file="homepagefooters.jsp" %>
	
        </body>
	</html>