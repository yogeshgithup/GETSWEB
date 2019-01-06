<%@page import="java.util.Iterator,data.FirstPage"%>
<%@page import="java.util.HashSet"%>
<%@page import="data.Course"%>
<%@page import="java.time.LocalDate"%>
<!doctype html>
<html lang="en">
	<head>
        <title>Generic E System</title>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/vendors/bootstrap/dist/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/uiadmin/css/main.css">
<!--===============================================================================================-->

        <!-- Main CSS --> 
        <link rel="stylesheet" href="<%=application.getContextPath()%>/uiadmin/vendor/select2/style.css">

        <!-- Font Awesome -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
        </head>
  
              <body id="home" data-spy="scroll" data-target="#navbar-top" data-offset="200">
        
        <!-- Main navigation -->
        <nav id="navbar-top" class="navbar fixed-top navbar-expand-md navbar-dark">
            <div class="container">
<%
System.out.println("entry");
                             HashSet<FirstPage> setfirstpage=(HashSet<FirstPage>)session.getAttribute("setfirstpage");
System.out.println("entry1"+setfirstpage);                      
                             Iterator<FirstPage> it=setfirstpage.iterator();
System.out.println("entry1"+it);                            
                             while(it.hasNext())
                              {
                                    System.out.println("82");
                                  FirstPage fp=it.next();
                              System.out.println(fp.getInstitutename());
%>                
                <!-- Company name shown on mobile -->
                <a class="navbar-brand" href="#"><span><%=fp.getInstitutename()%></a>
<%}%>
                <!-- Mobile menu toggle -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainNavbar" aria-controls="mainNavbar"  aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Main navigation items -->
                <div class="collapse navbar-collapse" id="mainNavbar">
                    <ul class="navbar-nav mr-auto">
                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#home">Home</a>
                        </li>

                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#about">Academics</a>
                        </li>


                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#style-examples">Gallery</a>
                        </li>

                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#three-column">About us</a>
                        </li>

                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#one-column">Contact us</a>
                        </li>
                         <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#locate">Location</a>
                        </li>
                        <li data-toggle="collapse" data-target=".navbar-collapse.show" class="nav-item">
                                <a class="nav-link" href="#log">Login</a>
                        </li>
                    </ul>
                     
                    <form class="form-inline header-search-form my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="text" size="6"  placeholder="Search" aria-label="Search">
                        <button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                    
                </div>
                
                
                
            </div>
        </nav>
        
       

        <!-- Jumbtron / Slider -->
        <div class="jumbotron-wrap jumbotron-wrap-image mb-2">
            <div class="container">
                <div id="mainCarousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="jumbotron">
                                <h1 class="text-center">Take a Visit To Our Institue</h1>
                                <p class="lead text-center">Where Success Is Habbit</p>
                                <p class="lead text-center">
                                    <a class="btn btn-primary btn-lg" href="#" role="button"><i class="fa fa-info"></i> &nbsp; Enroll Now</a>
                                </p>
                            </div>
                        </div>

                        <div class="carousel-item">
                            <div class="jumbotron">
                                <h1 class="text-center">MY KARSOL TECHS</h1>
                                <p class="lead text-center"></p>
                                <p class="lead text-center">
                                    <a class="btn btn-secondary btn-lg" href="#" role="button"><i class="fa fa-gbp"></i> &nbsp; Signup Now</a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <a class="carousel-control-prev" href="#mainCarousel" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#mainCarousel" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>

        <!-- Welcome content area -->
        <section id="weclome" class="card-container">
            <div class="container">
   
                <div class="text-center padded-box pb-0">
                        <h2>Aenean nec massa a tortor</h2>
                        <p class="lead">Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>

                </div>
                


                <div class="padded-box row">
                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic1.jpg" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">Integer dictum sed nibh vitae imperdiet. Nam suscipit lorem nec dui viverra vestibulum. </p>
                            <a href="#" class="btn btn-primary">Left link</a>
                              <a href="#" class="btn btn-secondary">Right link</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic2.jpg" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">Morbi iaculis, justo vitae dignissim aliquam, quam eros vehicula est, facilisis ultrices mi.</p>
                             <a href="#" class="btn btn-primary">Left link</a>
                              <a href="#" class="btn btn-secondary">Right link</a>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic3.jpg" alt="Card image cap">
                          <div class="card-body">
                            <p class="card-text">Nam lacinia aliquet tempus. Sed vitae semper augue. Vestibulum pulvinar laoreet egestas. </p>
                             <a href="#" class="btn btn-primary">Left link</a>
                              <a href="#" class="btn btn-secondary">Right link</a>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <!-- About section -->
        <section id="about" class="colored-bg">
            <div class="container">
                <div class="row">

                    <!-- Main content -->
                    <div class="col-md-8">
                        <article>
                            <h2 class="article-title">Introduction to bridges</h2>

                            <p class="article-meta">Posted on <time datetime="2017-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Welcome to bridges, a free CSS3 &amp; HTML5 responsive web template from <a href="https://zypopwebtemplates.com/" title="ZyPOP">ZyPOP</a>. This template is completely <strong>free</strong> to use permitting a link remains back to  <a href="https://zypopwebtemplates.com/" title="ZyPOP">https://zypopwebtemplates.com/</a>.</p>

                            <p> Should you wish to use this template unbranded you can buy a template license from our website for 8.00 GBP, this will allow you remove all branding related to our site, for more information about this see below.</p>	

                            <p>This template has been tested in:</p>

                            <ul>
                                <li>Firefox</li>
                                <li>IE / Edge</li>
                                <li>Chrome</li>
                                <li>Safari</li>
                                <li>iOS / Android</li>
                            </ul>

                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>

                        </article>

                        <article>

                            <h2 class="article-title">Buy unbranded</h2>
                            <p class="article-meta">Posted on <time datetime="2013-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Purchasing a template license for 8.00 GBP (at time of writing around 12 USD) gives you the right to remove any branding including links, logos and source tags relating to ZyPOP. As well as waiving the attribution requirement, your payment will also help us provide continued support for users as well as creating new web templates. Find out more about how to buy at the licensing page on our website which can be accessed at <a href="https://zypopwebtemplates.com/licensing" title="template license">https://zypopwebtemplates.com/licensing</a></p>

                            <h3>Lorem lipsum</h3>

                            <p>Morbi fermentum condimentum felis, commodo vestibulum sem mattis sed. Aliquam magna ante, mollis vitae tincidunt in, malesuada vitae turpis. Sed aliquam libero ut velit bibendum consectetur. Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>

                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>
                        </article>


                        <!-- Example pagination Bootstrap component -->
                        <nav>
                            <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                            </ul>
                        </nav>
                    </div>


                    <!-- Sidebar -->
                    <aside class="col-md-4">
                        <div class="sidebar-box">
                            <h4>Categories</h4>
                            <div class="list-group list-group-root">
                                <a class="list-group-item" href="#">Home Page</a>
                                <a class="list-group-item active" href="#about">About</a>
                                <a class="list-group-item" href="#style-examples">Style Examples</a>
                                <div class="list-group">
                                    <a class="list-group-item" href="#three-column">Three Column</a>
                                    <a class="list-group-item" href="#one-column">One column / no sidebar</a>
                                    <a class="list-group-item" href="#contact">Contact</a>	
                                </div>
                                <a class="list-group-item" href="#three-column">Three column layout example</a>
                                <a class="list-group-item" href="#">Sed aliquam libero ut velit bibendum</a>
                                <a class="list-group-item" href="#">Maecenas condimentum velit vitae</a>
                            </div>
                        </div>

                        <div class="sidebar-box sidebar-box-bg">
                            <h4>About us</h4>
                            <p>Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus. <a href="#" class="readmore">Read More &raquo;</a></p>    
                        </div>

                        <div class="sidebar-box">
                            <h4>Search site</h4>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="text"  placeholder="Search" aria-label="Search">
                                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </div>

                        <div class="sidebar-box">
                            <h4>Helpful Links</h4>
                            <ul>
                                <li><a href="http://www.themeforest.net/?ref=spykawg" title="premium templates">Premium HTML web templates from $10</a></li>
                                <li><a href="http://www.dreamhost.com/r.cgi?259541" title="web hosting">Cheap web hosting from Dreamhost</a></li>
                                <li><a href="http://tuxthemes.com" title="Tux Themes">Premium WordPress themes</a></li>
                            </ul>
                        </div>
                    </aside> 

                </div>
            </div> 
        </section>
        
        
        
        <!-- Style Examples / Right sidebar -->
        <div id="style-examples" class="jumbotron-wrap colored-bg-container">
            <div class="container">
                <div class="jumbotron">
                    <h1 class="text-center">Style examples</h1>
                </div>
            </div>
        </div>
        
        <section>
            <div class="container">
                <div class="row">

                    
                    <!-- Sidebar -->
                    <aside class="col-sm-4">
                        <div class="sidebar-box">
                            <h4>Categories</h4>
                            <div class="list-group list-group-root">
                                <a class="list-group-item" href="#">Home Page</a>
                                <a class="list-group-item" href="#about">About</a>
                                <a class="list-group-item active" href="#style-examples">Style Examples</a>
                                <div class="list-group">
                                    <a class="list-group-item" href="#three-column">Three Column</a>
                                    <a class="list-group-item" href="#one-column">One column / no sidebar</a>
                                    <a class="list-group-item" href="#contact">Contact</a>	
                                </div>
                                <a class="list-group-item" href="#three-column">Three column layout example</a>
                                <a class="list-group-item" href="#">Sed aliquam libero ut velit bibendum</a>
                                <a class="list-group-item" href="#">Maecenas condimentum velit vitae</a>
                            </div>
                        </div>

                        <div class="sidebar-box sidebar-box-bg">
                            <h4>About us</h4>
                            <p>Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus. <a href="#" class="readmore">Read More &raquo;</a></p>    
                        </div>

                        <div class="sidebar-box">
                            <h4>Search site</h4>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="text"  placeholder="Search" aria-label="Search">
                                <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </div>

                        <div class="sidebar-box">
                            <h4>Helpful Links</h4>
                            <ul>
                                <li><a href="http://www.themeforest.net/?ref=spykawg" title="premium templates">Premium HTML web templates from $10</a></li>
                                <li><a href="http://www.dreamhost.com/r.cgi?259541" title="web hosting">Cheap web hosting from Dreamhost</a></li>
                                <li><a href="http://tuxthemes.com" title="Tux Themes">Premium WordPress themes</a></li>
                            </ul>
                        </div>
                    </aside> 

                    
                    
                    <!-- Main content -->
                    <div class="col-sm-8">
                        <article>
                            <h2 class="article-title">Examples</h2>

                            <p>Here are some examples based on basic HTML mark up and Bootstrap's built in components.</p>
                            <p>Consult the <a href="https://getbootstrap.com/docs/4.0/getting-started/introduction/">Bootstrap documentation</a> for more information.</p>

                            <h1>Heading H1</h1>
                            <h2>Heading H2</h2>
                            <h3>Heading H3</h3>
                            <h4>Heading H4</h4>
                            <h5>Heading H5</h5>


                            <p>&nbsp;</p>


                            <h3>Lists</h3>
                            <ul>

                                <li>List item</li>
                                <li>List item</li>
                                <li>List item</li>
                            </ul>

                            <ol>
                                <li>List item</li>
                                <li>List item</li>
                                <li>List item</li>
                            </ol>

                            <p>&nbsp;</p>

                            <h3>Code and blockquote</h3>
                            <p>Here is an example of some <code>&lt;? echo('Hello world'); ?&gt;</code> inline code.</p>

                            <pre><code>&lt;p&gt;This code block...&lt;/p&gt;
&lt;p&gt;Covers multiple lines...&lt;/p&gt;
                            </code></pre>


                            <blockquote><p>Mauris sit amet tortor in urna tincidunt aliquam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p></blockquote>


                            <p>&nbsp;</p>



                            <h3>Table</h3>

                            <table class="table">
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Age</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>John Smith</td>
                                    <td>28</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Fred James</td>
                                    <td>49</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Rachel Johnson</td>
                                    <td>19</td>
                                </tr>

                            </table>

                            <p>&nbsp;</p>


                            <h3>Alerts</h3>
                            <div class="alert alert-primary" role="alert">
                              This is a primary alert?check it out!
                            </div>
                            <div class="alert alert-secondary" role="alert">
                              This is a secondary alert?check it out!
                            </div>
                            <div class="alert alert-success" role="alert">
                              This is a success alert?check it out!
                            </div>
                            <div class="alert alert-danger" role="alert">
                              This is a danger alert?check it out!
                            </div>
                            <div class="alert alert-warning" role="alert">
                              This is a warning alert?check it out!
                            </div>
                            <div class="alert alert-info" role="alert">
                              This is a info alert?check it out!
                            </div>
                            <div class="alert alert-light" role="alert">
                              This is a light alert?check it out!
                            </div>
                            <div class="alert alert-dark" role="alert">
                              This is a dark alert?check it out!
                            </div>

                            <p>&nbsp;</p>

                            <h3>Badges</h3>
                            <span class="badge badge-primary">Primary</span>
                            <span class="badge badge-secondary">Secondary</span>
                            <span class="badge badge-success">Success</span>
                            <span class="badge badge-danger">Danger</span>
                            <span class="badge badge-warning">Warning</span>
                            <span class="badge badge-info">Info</span>
                            <span class="badge badge-light">Light</span>
                            <span class="badge badge-dark">Dark</span>

                            <p>&nbsp;</p>

                            <h3>Buttons</h3>
                            <button type="button" class="btn btn-primary">Primary</button>
                            <button type="button" class="btn btn-secondary">Secondary</button>
                            <button type="button" class="btn btn-success">Success</button>
                            <button type="button" class="btn btn-danger">Danger</button>
                            <button type="button" class="btn btn-warning">Warning</button>
                            <button type="button" class="btn btn-info">Info</button>
                            <button type="button" class="btn btn-light">Light</button>
                            <button type="button" class="btn btn-dark">Dark</button>
                            <button type="button" class="btn btn-link">Link</button>

                            <p>&nbsp;</p>

                            <h3>Tabs</h3>
                            <ul class="nav nav-tabs">
                              <li class="nav-item">
                                <a class="nav-link active" href="#">Active</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                              </li>
                            </ul>
                        </article>
                    </div>
                </div> 
            </div>
        </section>
        
        
        
        <!-- Testimonial section -->
        <section id="quotes" class="colored-bg">
            <div class="container">    
                <h2>Testimonials</h2>
                <div class="padded-box pt-0 row">
                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic4.jpg" alt="Card image cap">
                          <div class="card-body">
                            <blockquote class="card-text">In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</blockquote>
                            <p class="card-text quote-text">- Joe Bloggs, <a href="#">A Company</a></p>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic5.jpg" alt="Card image cap">
                          <div class="card-body">
                            <blockquote class="card-text">Aenean non libero vestibulum, finibus lacus quis, ullamcorper diam. Ut quis sollicitudin mi, dignissim ultrices elit. </blockquote>
                            <p class="card-text quote-text">- Jane Doe, <a href="#">Marketing Business</a></p>
                          </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card text-center">
                          <img class="card-img-top" src="<%=application.getContextPath()%>/uiadmin/images/pic6.jpg" alt="Card image cap">
                          <div class="card-body">
                            <blockquote class="card-text">Quisque faucibus neque sodales, suscipit nisi vitae, placerat nisi. Nam cursus molestie posuere, Aenean non libero vestibulum. </blockquote>
                            <p class="card-text quote-text">- Annaleigh Rose, <a href="#">CEO</a></p>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <!-- Three column content layout -->
        <section id="three-column">
            <div class="container">
                <div class="row">
                    <!-- Left sidebar -->
                     <aside class="col-md-3">
                        <div class="sidebar-box">
                            <h4>Categories</h4>
                            <div class="list-group list-group-root">
                                <a class="list-group-item" href="#">Home Page</a>
                                <a class="list-group-item" href="#about">About</a>
                                <a class="list-group-item" href="#style-examples">Style Examples</a>
                                <div class="list-group">
                                    <a class="list-group-item active" href="#three-column">Three Column</a>
                                    <a class="list-group-item" href="#one-column">One column / no sidebar</a>
                                    <a class="list-group-item" href="#contact">Contact</a>	
                                </div>
                                <a class="list-group-item" href="#three-column">Three column layout example</a>
                                <a class="list-group-item" href="#">Sed aliquam libero ut velit bibendum</a>
                                <a class="list-group-item" href="#">Maecenas condimentum velit vitae</a>
                            </div>
                        </div>

                        <div class="sidebar-box sidebar-box-bg">
                            <h4>About us</h4>
                            <p>Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus. <a href="#" class="readmore">Read More &raquo;</a></p>    
                        </div>

                        <div class="sidebar-box">
                            <h4>Search site</h4>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="text"  placeholder="Search" aria-label="Search">
                                <button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>

                        <div class="sidebar-box">
                            <h4>Helpful Links</h4>
                            <ul>
                                <li><a href="http://www.themeforest.net/?ref=spykawg" title="premium templates">Premium HTML web templates from $10</a></li>
                                <li><a href="http://www.dreamhost.com/r.cgi?259541" title="web hosting">Cheap web hosting from Dreamhost</a></li>
                                <li><a href="http://tuxthemes.com" title="Tux Themes">Premium WordPress themes</a></li>
                            </ul>
                        </div>
                    </aside> 

                    <!-- Main content -->
                    <div class="col-md-6">
                        <article>
                            <h2 class="article-title">Three column layout</h2>

                            <p class="article-meta">Posted on <time datetime="2017-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Welcome to bridges, a free CSS3 &amp; HTML5 responsive web template from <a href="https://zypopwebtemplates.com/" title="ZyPOP">ZyPOP</a>. This template is completely <strong>free</strong> to use permitting a link remains back to  <a href="https://zypopwebtemplates.com/" title="ZyPOP">http://zypopwebtemplates.com/</a>.</p>

                            <p> Should you wish to use this template unbranded you can buy a template license from our website for 8.00 GBP, this will allow you remove all branding related to our site, for more information about this see below.</p>	

                            <p>This template has been tested in:</p>

                            <ul>
                                <li>Firefox</li>
                                <li>IE / Edge</li>
                                <li>Chrome</li>
                                <li>Safari</li>
                                <li>iOS / Android</li>
                            </ul>

                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>

                        </article>

                        <article>

                            <h2 class="article-title">Buy unbranded</h2>
                            <p class="article-meta">Posted on <time datetime="2017-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Purchasing a template license for 8.00 GBP (at time of writing around 10 USD) gives you the right to remove any branding including links, logos and source tags relating to ZyPOP. As well as waiving the attribution requirement, your payment will also help us provide continued support for users as well as creating new web templates. Find out more about how to buy at the licensing page on our website which can be accessed at <a href="https://zypopwebtemplates.com/licensing" title="template license">https://zypopwebtemplates.com/licensing</a></p>

                            <h3>Lorem lipsum</h3>

                            <p>Morbi fermentum condimentum felis, commodo vestibulum sem mattis sed. Aliquam magna ante, mollis vitae tincidunt in, malesuada vitae turpis. Sed aliquam libero ut velit bibendum consectetur. Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>

                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>
                        </article>


                        <!-- Example pagination Bootstrap component -->
                        <nav>
                            <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                            </ul>
                        </nav>
                    </div>


                    <!-- Right Sidebar -->
                    <aside class="col-md-3">
                        <div class="sidebar-box">
                            <h4>Categories</h4>
                            <div class="list-group list-group-root">
                                <a class="list-group-item" href="#">Home Page</a>
                                <a class="list-group-item" href="#about">About</a>
                                <a class="list-group-item" href="#style-examples">Style Examples</a>
                                <div class="list-group">
                                    <a class="list-group-item active" href="#three-column">Three Column</a>
                                    <a class="list-group-item" href="#one-column">One column / no sidebar</a>
                                    <a class="list-group-item" href="#contact">Contact</a>	
                                </div>
                                <a class="list-group-item" href="#three-column">Three column layout example</a>
                                <a class="list-group-item" href="#">Sed aliquam libero ut velit bibendum</a>
                                <a class="list-group-item" href="#">Maecenas condimentum velit vitae</a>
                            </div>
                        </div>

                        <div class="sidebar-box sidebar-box-bg">
                            <h4>About us</h4>
                            <p>Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus. <a href="#" class="readmore">Read More &raquo;</a></p>    
                        </div>

                        <div class="sidebar-box">
                            <h4>Search site</h4>
                            <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="text"  placeholder="Search" aria-label="Search">
                                <button class="btn btn-secondary my-2 my-sm-0" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                        </div>

                        <div class="sidebar-box">
                            <h4>Helpful Links</h4>
                            <ul>
                                <li><a href="http://www.themeforest.net/?ref=spykawg" title="premium templates">Premium HTML web templates from $10</a></li>
                                <li><a href="http://www.dreamhost.com/r.cgi?259541" title="web hosting">Cheap web hosting from Dreamhost</a></li>
                                <li><a href="http://tuxthemes.com" title="Tux Themes">Premium WordPress themes</a></li>
                            </ul>
                        </div>
                    </aside> 
                </div> 
            </div>
        </section>
        
        
        <!-- One column layout -->
        <section id="one-column" class="colored-bg">
            <div class="container">
                <div class="row">

                    <!-- Main content -->
                    <div class="col">
                        <article>
                            <h2 class="article-title">One column layout</h2>

                            <p class="article-meta">Posted on <time datetime="2017-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Welcome to bridges, a free CSS3 &amp; HTML5 responsive web template from <a href="https://zypopwebtemplates.com/" title="ZyPOP">ZyPOP</a>. This template is completely <strong>free</strong> to use permitting a link remains back to  <a href="https://zypopwebtemplates.com/" title="ZyPOP">https://zypopwebtemplates.com/</a>.</p>

                            <p> Should you wish to use this template unbranded you can buy a template license from our website for 8.00 GBP, this will allow you remove all branding related to our site, for more information about this see below.</p>	

                            <p>This template has been tested in:</p>

                            <ul>
                                <li>Firefox</li>
                                <li>IE / Edge</li>
                                <li>Chrome</li>
                                <li>Safari</li>
                                <li>iOS / Android</li>
                            </ul>


                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>

                        </article>

                        <article>

                            <h2 class="article-title">Buy unbranded</h2>
                            <p class="article-meta">Posted on <time datetime="2017-05-14">14 May</time> by <a href="#" rel="author">Joe Bloggs</a></p>

                            <p>Purchasing a template license for 8.00 GBP (at time of writing around 10 USD) gives you the right to remove any branding including links, logos and source tags relating to ZyPOP. As well as waiving the attribution requirement, your payment will also help us provide continued support for users as well as creating new web templates. Find out more about how to buy at the licensing page on our website which can be accessed at <a href="https://zypopwebtemplates.com/licensing" title="template license">https://zypopwebtemplates.com/licensing</a></p>

                            <h3>Lorem lipsum</h3>

                            <p>Morbi fermentum condimentum felis, commodo vestibulum sem mattis sed. Aliquam magna ante, mollis vitae tincidunt in, malesuada vitae turpis. Sed aliquam libero ut velit bibendum consectetur. Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>

                            <a href="#" class="btn btn-primary">Read more</a>
                            <a href="#" class="btn btn-secondary">Comments</a>
                        </article>


                        <!-- Example pagination Bootstrap component -->
                        <nav>
                            <ul class="pagination">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item active"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                            </ul>
                        </nav>
                    </div>        
                </div> 
            </div>
        </section>
        
            
        <!-- LOCATION section -->
        <section id="locate">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                       <h1>Locate us</h1><br></br>
                      
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.9856568207324!2d-73.9852353!3d40.7623402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2585631334765%3A0x5dbf06b70e5364d8!2sGershwin+Theatre!5e0!3m2!1sen!2suk!4v1517586622554" width="100" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </section>
            

            <!-- LOGIN -->
        <section id="log">
            <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don?t have an account?
						</span>

						<a class="txt2" href="#">
							Sign Up
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
        </section>
        
        
        <!-- Gray bg jumbotron -->
        <div class="gray-bg-container mb-0 jumbotron-wrap">
            <div class="container">
                <div class="jumbotron px-0">
                     <h2>Lorem lipsum</h2>
                    <p class="lead">Quisque sagittis, est in laoreet semper, enim dui consequat felis, faucibus ornare urna velit nec leo. Maecenas condimentum velit vitae est lobortis fermentum. In tristique sem vitae metus ornare luctus tempus nisl volutpat. Integer et est id nisi tempus pharetra sagittis et libero.</p>
                </div>
            </div>
        </div>

        
        
        <!-- Footer -->
        <footer class="footer">
            <div class="footer-lists">
                <div class="container">
                    <div class="row">
                        <div class="col-sm">
                            <ul>
                                <li><h4>Proin accumsan</h4></li>
                                <li><a href="#">Rutrum nulla a ultrices</a></li>
                                <li><a href="#">Blandit elementum</a></li>
                                <li><a href="#">Proin placerat accumsan</a></li>
                                <li><a href="#">Morbi hendrerit libero </a></li>
                                <li><a href="#">Curabitur sit amet tellus</a></li>
                            </ul>
                        </div>
                        <div class="col-sm">
                            <ul>
                                <li><h4>Condimentum</h4></li>
                                <li><a href="#">Curabitur sit amet tellus</a></li>
                                <li><a href="#">Morbi hendrerit libero </a></li>
                                <li><a href="#">Proin placerat accumsan</a></li>
                                <li><a href="#">Rutrum nulla a ultrices</a></li>
                                <li><a href="#">Cras dictum</a></li>
                            </ul>
                        </div>   
                        <div class="col-sm">
                            <ul>
                                <li><h4>Suspendisse</h4></li>
                                <li><a href="#">Morbi hendrerit libero </a></li>
                                <li><a href="#">Proin placerat accumsan</a></li>
                                <li><a href="#">Rutrum nulla a ultrices</a></li>
                                <li><a href="#">Curabitur sit amet tellus</a></li>
                                <li><a href="#">Donec in ligula nisl.</a></li>
                            </ul>
                        </div>
                        <div class="col-sm">
                            <h4>Suspendisse</h4>
                            <p>Integer mattis blandit turpis, quis rutrum est. Maecenas quis arcu vel felis lobortis iaculis fringilla at ligula. Nunc dignissim porttitor dolor eget porta.</p>

                            <p class="social-icons">
                                <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                                <a href="#"><i class="fa fa-twitter fa-2x"></i></a>
                                <a href="#"><i class="fa fa-youtube fa-2x"></i></a>
                                <a href="#"><i class="fa fa-instagram fa-2x"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div class="footer-bottom">
                    <p class="text-center">Free Boostrap 4 Theme by <a href="https://zypopwebtemplates.com/">ZyPop</a>.</p>
                    <p class="text-center"><a href="#">Back to top</a></p>
            </div>
            
        </footer>



        <!-- Bootcamp JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>

    </body>
</html>