	<%@page import="data.Course"%>
<!DOCTYPE html>
	<html lang="zxx" class="no-js">
            <head>
                		<title>Homepage</title>
                          
                                <%@include file="homepageheaders.jsp" %>
            </head>
            <%
            it=setfirstpage.iterator();
System.out.println("entry1"+it);                    
                             while(it.hasNext())
                              {
                                  FirstPage fp=it.next();
                              System.out.println(fp.getInstitutename());
%>                    

          		<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-between">
						<div class="banner-content col-lg-9 col-md-12">
							<h1 class="text-uppercase">
                                                        <%=fp.getQuote()%>
							</h1>
							<p class="pt-10 pb-10">
							</p>
							<a href="<%=application.getContextPath()%>/uiadmin/SignupPage.jsp" class="primary-btn text-uppercase">Enroll Now</a>
							<br><br>
							<a href="login.jsp" class="primary-btn text-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign In&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

						</div>										
					</div>
				</div>					
			</section>
			<!-- End banner Area -->
<%}%>                       
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
                                                    <a class="primary-btn " href="#"><%=course.getC_name()%></a>
				
                                                    	

                                                </div>
					 
		<%}%>	
                                    </div>
                                </div>	
			</section>
    	
<!-- End popular-course Area -->
		 <%@include file="homepagefooters.jsp" %>
		</body>
	</html>