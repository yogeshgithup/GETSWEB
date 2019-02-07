<%@page import="operation.CourseSubSecOperation"%>
<%@page import="java.util.Iterator"%>
<%@page import="data.FirstPage"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.Connection"%>
<%!
String quote;
%>
<%

                                  ServletContext ctxx=this.getServletContext();
                                  Connection conn=(Connection)ctxx.getAttribute("MyConn");
                                  CourseSubSecOperation copo=new CourseSubSecOperation(conn);
                               HashSet<FirstPage> setfirstpagee=copo.getfirstpage();
                               Iterator<FirstPage> iyt=setfirstpagee.iterator();
                                 while(iyt.hasNext())
                                 {
                                       FirstPage fpp=iyt.next();
                                          quote=fpp.getQuote();
                                 }
%>                    

            
            <!-- Start cta-two Area -->
            <section class="cta-two-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 cta-left">
                            <h1><%=quote%></h1>
                        </div>
                    </div>
                </div>  
            </section>
          
            <!-- End cta-two Area -->
            <script src="<%=application.getContextPath()%>/js/vendor/jquery-2.2.4.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="<%=application.getContextPath()%>/js/vendor/bootstrap.min.js"></script>          
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
            <script src="<%=application.getContextPath()%>/js/easing.min.js"></script>            
            <script src="<%=application.getContextPath()%>/js/hoverIntent.js"></script>
            <script src="<%=application.getContextPath()%>/js/superfish.min.js"></script> 
            <script src="<%=application.getContextPath()%>/js/jquery.ajaxchimp.min.js"></script>
            <script src="<%=application.getContextPath()%>/js/jquery.magnific-popup.min.js"></script> 
            <script src="<%=application.getContextPath()%>/js/jquery.tabs.min.js"></script>                       
            <script src="<%=application.getContextPath()%>/js/jquery.nice-select.min.js"></script>    
            <script src="<%=application.getContextPath()%>/js/owl.carousel.min.js"></script>                                  
            <script src="<%=application.getContextPath()%>/js/mail-script.js"></script>   
            <script src="<%=application.getContextPath()%>/js/main.js"></script>