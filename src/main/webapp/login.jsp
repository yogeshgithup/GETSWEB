	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
 <head>
                		<title>Homepage</title>

                                 <%@include file="homepageheaders.jsp" %>
            </head>
	
			<!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-between">
						<div class="banner-content col-lg-9 col-md-12">
							<h1 class="text-uppercase">
								We Ensure better education
								for a better world			
							</h1>
							<br>
								<form  method="post" action="<%=application.getContextPath()%>/SerLogin">
								
									  <div class="form-group col-lg-6 col-md-12 name">
									    <input type="text" class="form-control" name="LoginId" id="LoginId" placeholder="Enter Login Id" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Login Id'">
									  </div>
									 										
								
									<div class="form-group col-lg-6 col-md-12 name">
										<input type="text" class="form-control" name="Password" id="Password" placeholder="Enter Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Password'">
										<br>
                                                                                                       
                                                                                <button type="submit" value="submit" name="submit" class="primary-btn text-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                                                                      
									</div>
							
						
								</form>
							
							
						</div>										
					</div>
				</div>					
			</section>
			<!-- End banner Area -->
		 <%@include file="homepagefooters.jsp" %>
	
		</body>
	</html>