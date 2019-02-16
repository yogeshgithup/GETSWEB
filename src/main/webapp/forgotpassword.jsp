<%-- 
    Document   : forgotpassword
    Created on : Feb 16, 2019, 11:04:20 AM
    Author     : Asadali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FORGOT PASSWORD</title>
                                         <%@include file="homepageheaders.jsp" %>
                              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                
                                 <script>
                                     $(document).ready(function()
                                     
                                     {
                                       $("#LoginId").focusout(function(){
                                          // alert("123");
                                          var login = $("#LoginId").val();
                                         // alert(login);
                                          if(login!=="")
                                          {
                                           //   alert("1234");
                                             $.post("<%=application.getContextPath()%>/SerUserChecking",{"LoginId":login},function(data,status){
                                          //   alert("heloooo");
                                             alert(data);
                                             $("#LoginId").val("");
                                         });
                                          }
                                       }); 
                                     });
                                    
                                     </script>
    </head>
   <!-- start banner Area -->
			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
 					<div class="row fullscreen d-flex align-items-center justify-content-between">
						<div class="banner-content col-lg-9 col-md-12">
							<h1 class="text-uppercase">
								Forgot Password			
							</h1>
							<br>
								<form  method="post" action="<%=application.getContextPath()%>/SerForgotPassword">
								
									  <div class="form-group col-lg-6 col-md-12 name">
                                                                              <input type="email" class="form-control"  required name="LoginId" id="LoginId" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Login Id'">
									  </div>
									 										
								
									<div class="form-group col-lg-6 col-md-12 name">
										
                                                                                                       
                                                                         <button type="submit" value="submit" name="submit" class="primary-btn text-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Submit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                                                             
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
