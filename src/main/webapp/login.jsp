	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
 <head>
                		<title>Homepage</title>

                                 <%@include file="homepageheaders.jsp" %>
            
 </head>
	<body>
              <%
              String msg=null;
              String msg1=(String)session.getAttribute("msg");
                    if(msg1!=null)
                    {
                        System.out.println("1"+msg1);
                              msg=msg1;
                    }
                  else if(msg==null)
                {
                    System.out.println("2"+msg);
                             msg="ABCCD";
              }
%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    //alert("Hello");
    //$('#msg').load(function(){
      //      alert("how are you");
       $('#msg').fadeOut(5000);
        //    });
//    
});      
</script>

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
					<div id="msg" align="center" style="color:white">
                        <h3 class="text-uppercase"><%=msg%></h3>
               </div>
			
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