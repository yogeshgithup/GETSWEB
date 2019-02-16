	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
             <head>
                		<title>Home Page</title>

                                 <%@include file="homepageheaders.jsp" %>
            </head>

<!-- start banner Area -->
                        <section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Contact Us				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>Contact Us</p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->				  

			<!-- Start contact-page Area -->
			<section class="contact-page-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-4 d-flex flex-column address-wrap">
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-home"></span>
								</div>
								
	<%
                System.out.println("hereee------------"+it);
                it=setfirstpage.iterator();
                System.out.println("entry1"+it);                              
                while(it.hasNext())
                              {
                                  FirstPage fp=it.next();
                                  System.out.println(fp.getInstitutename());
                                  System.out.println(fp.getAddress());
%>                    

                                                                <div class="contact-details">
                                                                    <h5>Address</h5>
									<p>
										<%=fp.getAddress()%>
									</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-phone-handset"></span>
								</div>
								<div class="contact-details">
									<h5><%=fp.getContactno()%></h5>
									<p>Available all the time</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-envelope"></span>
								</div>
								<div class="contact-details">
									<h5><%=fp.getEmail()%></h5>
									<p>Send us your query anytime!</p>
								</div>
                                                                        <%}%>
							</div>														
						</div>
						
					</div>
				</div>	
			</section>
			<!-- End contact-page Area -->
		 <%@include file="homepagefooters.jsp" %>
				
		</body>
	</html>