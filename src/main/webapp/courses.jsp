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
    // $( "#dialog" ).dialog();
  $("a.primary-btn").click(function(e){
      e.preventDefault();
     alert($(this).attr("href"));
      $.ajax( {
                  url:$(this).attr("href"),
                  success:function(data) {
                     alert(data);
                     obj=JSON.parse(data);
                     alert("Duration="+obj.duration+"\nCourse_fees="+obj.c_fees+"\nCourse_id="+obj.c_id+"\nCourse_name="+obj.c_name+"\nhpw="+obj.hpw+"\ndpw"+obj.dpw);
                     $("#mydiv").html(obj.duration);
                          
    }
               });
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
		           <div id="dialog">hello</div>
             
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
              <a class="primary-btn" id="mybtn"  value="myModal"   href="<%=application.getContextPath()%>/SerSetCourse?iid=<%=course.getC_id()%>" ><%=course.getC_name()%></a>                    	                                            
                  
                                                </div>
					 
		<% } %>	
                                      
                                    </div>
                                </div>	
			</section>                                          
                    
     
		 <%@include file="homepagefooters.jsp" %>
	
        </body>  
	</html>