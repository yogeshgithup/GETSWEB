<%@page import="java.util.Iterator"%>
<%@page import="data.FirstPage"%>
<%@page import="java.util.HashSet"%>
<head>
<%
System.out.println("entry");
                             HashSet<FirstPage> setfirstpage=(HashSet<FirstPage>)session.getAttribute("setfirstpage");
System.out.println("entry1"+setfirstpage);                      
                             Iterator<FirstPage> it=setfirstpage.iterator();
System.out.println("entry1"+it);                            
                             while(it.hasNext())
                              {
                                  FirstPage fp=it.next();
                              System.out.println(fp.getInstitutename());
%>                    
    <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="<%=application.getContextPath()%>/img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
      

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
            <!--
            CSS
            ============================================= -->
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/linearicons.css">
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/font-awesome.min.css">
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/bootstrap.css">
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/magnific-popup.css">
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/nice-select.css">                          
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/animate.min.css">
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/owl.carousel.css">         
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/jquery-ui.css">            
            <link rel="stylesheet" href="<%=application.getContextPath()%>/css/main.css">
        </head>
                  <header id="header" id="home">
                <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
                            <ul>
                                <li><a href="#"></i></a></li>
                                <li><a href="#"></i></a></li>
                                <li><a href="#"></i></a></li>
                                <li><a href="#"></i></a></li>
                            </ul>           
                        </div>
                        <div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
                            <a href="tel:+953 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text"></span></a>
                               <a href="mailto:support@colorlib.com"><span class="lnr lnr-envelope"></span></a>         
                        </div>
                    </div>                              
                </div>
            </div>
                <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                  <div id="logo">
                    <a href="homepage.jsp"><img src="<%=fp.getFilepath()%>" alt="" title="" /></a>
                  </div>
                  <nav id="nav-menu-container">
                    <ul class="nav-menu">
                      <li><a href="homepage.jsp">Home</a></li>
                      <li><a href="about.jsp">About</a></li>
                      <li><a href="courses.jsp">Courses</a></li>
                      <li><a href="locate.jsp">Locate us</a></li>
                      <li><a href="gallery.jsp">Gallery</a></li>
                      <li><a href="contact.jsp">Contact</a></li>
                      <li><a href="">Academics</a></li>
                      <li><a href="login.jsp">Login</a></li>
                      
                       </li>                                                                          
                    </ul>
                  </nav><!-- #nav-menu-container -->                    
                </div>
            </div>
          </header><!-- #header -->

<%}%>        