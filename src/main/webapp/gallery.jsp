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
							<p class="text-white link-nav"><a href="HomePage.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>Gallery</p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
				
			<!-- Start gallery Area -->
			
                                
               
                 <div class="w3-content w3-section " >
                   
               
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
<a href="#"   > <img class="mySlides" src="<%=p.getImagepath()%>"  style="padding:10px;" ></a>

<% }%>               
                    <script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1;}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>  
                  
 </div>
 <%@include file="homepagefooters.jsp" %>
	
		</body>
	</html>