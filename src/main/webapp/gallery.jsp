	<%@page import="data.pictures"%>
<%@page import="operation.CourseSubSecOperation"%>
<!DOCTYPE html> 
	<html lang="zxx" class="no-js">
	   <head>
                		<title>Homepage</title>

                                 <%@include file="homepageheaders.jsp" %>
            </head>
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Gallery				
							</h1>	
							<p class="text-white link-nav"><a href="HomePage.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="gallery.jsp"> Gallery</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
				
			<!-- Start gallery Area -->
			<section cleeyass="gallery-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
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

                                                    <a href="#" class="img-gal">
								<div class="single-imgs relative">		
									<div class="overlay overlay-bg"></div>
									<div class="relative">				
                                                                            <img class="img-fluid" src=<%=p.getImagepath()%> >		
									</div>
								</div>
							</a>
						</div>
                                                </div>
						</div>					
					
			</section>
			<!-- End gallery Area -->
					<%}%>								
	 <%@include file="homepagefooters.jsp" %>
	
		</body>
	</html>