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
<a href="#"  style="padding-left: 50px; padding-bottom: 30px;"> <img src="<%=p.getImagepath()%>" vspace="20" width="300px" height="250px" alt="img"></a>
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
			<!-- End gallery Area -->
										
	 <%@include file="homepagefooters.jsp" %>
	
		</body>
	</html>