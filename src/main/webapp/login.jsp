	<%@page import="javafx.scene.control.Alert"%>
<!DOCTYPE html>
	<html lang="zxx" class="no-js">
 <head>
                		<title>Home Page</title>
                                
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                                 <%@include file="homepageheaders.jsp" %>
                                
                                <%
                                String msg= request.getParameter("msg");
                                String m;
                                if(msg==null)
                                {
                                    m="";
                                }
                                else
                                {
                                    m=msg;
                                }
                             
                                 %>
                                 <script>
                                     $(document).ready(function()
                                      
                                      
                                     {
                                      $("#msg").fadeOut(3000);
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
								We Ensure better education
								for a better world			
							</h1>
							<br>
                                                        <h4 style="color:white;" id="msg"><%=m%></h4>                
								<form  method="post" action="<%=application.getContextPath()%>/SerLogin">
								
									  <div class="form-group col-lg-6 col-md-12 name">
                                                                              <input type="text" class="form-control"  required name="LoginId" id="LoginId" placeholder="Enter Login Id" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Login Id'">
									  </div>
									 										
								
									<div class="form-group col-lg-6 col-md-12 name">
										<input type="password" class="form-control" required name="Password" id="Password" placeholder="Enter Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Password'">
										<br>
                                                                                                       
                                                                                <button type="submit" value="submit" name="submit" class="primary-btn text-uppercase">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                                                                             
									</div>
							
						
								</form>
                                                                
                                                                <form>
                                                                    <div>
                                                                    <a  href="<%=application.getContextPath()%>/forgotpassword.jsp"> <span class="psw"></span>Forgot password?</a>
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