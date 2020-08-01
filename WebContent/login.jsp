<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.query" %>
	 <%@page import="com.Index" %>
	 <%@page import="com.assets" %>
	 
    <%
    	  query q=new query();
    	 Index img=new Index();
		  assets a=new assets();
		String  asse[]=a.getAssets();
		int start=img.StartingIndex();
    %>
<!DOCTYPE html>
<html lang="en">
<%
 String add= null;
 try
 {
 	add=request.getParameter("add");
 }
 catch(Exception e)
 {
 }
 if(add=="o")
{
%>
<script type="text/javascript"> alert("Please enter Your Address");</script>
<% } %>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title><%=asse[5] %></title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- header -->
		<div id="header">
			<div class="container">
				<div class="pull-left">
					<!-- Logo -->
					<div class="header-logo">
						<a class="logo" href="index.jsp %>">
							<img src=".<%=asse[1]%>" alt="MAK-SHOP">
						</a>
					</div>
					<!-- /Logo -->
				</div>
				<div class="pull-right">
					<div class="header col-sm-12 col-ms-8 col-xs-8 ">
					</div>
		    	<ul class="header-btns">
						<!-- Account -->
						<li class="header-account dropdown default-dropdown">
							<div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
								<div class="header-btns-icon">
									<i class="fa fa-user-o"></i>
								</div>
								<strong class="text-uppercase">My Account <i class="fa fa-caret-down"></i></strong>
							</div>
							<a href="login.jsp" class="text-uppercase">Login/Join</a>
							<ul class="custom-menu">
								<li><a href="Customer.jsp"><i class="fa fa-user-o"></i> My Account</a></li>
								<li ><a href="login.jsp"><i class="fa fa-unlock-alt"></i> Login</a></li>
								<li ><a href="logout.jsp"><i class="fa fa-unlock-alt" ></i> Logout</a></li>
							</ul>
						</li>
						<!-- /Account -->


						<!-- Mobile nav toggle-->
						<li class="nav-toggle">
							<button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
						</li>
						<!-- / Mobile nav toggle -->
					</ul>
				</div>
			</div>
			<!-- header -->
		</div>
		<!-- container -->
	</header>
	<!-- /HEADER -->

	<!-- NAVIGATION -->
	<div id="navigation">
		<!-- container -->
		<div class="container">
			<div id="responsive-nav">
				<!-- category nav -->
				<div class="category-nav show-on-click">
					<span class="category-header">Categories <i class="fa fa-list"></i></span>
					<ul class="category-list">
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Painting Styles <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Painting style</h3></li>
												<li><a href="products.jsp?query='Modernism'" >Modernism</a></li>
												<li><a href="products.jsp?query='Impressionism'">Impressionism</a></li>
												<li><a href="products.jsp?query='Abstract Art'">Abstract Art</a></li>
												<li><a href="products.jsp?query='Expressionism'">Expressionism</a></li>
												<li><a href="products.jsp?query='Cubism'">Cubism</a></li>
												<li><a href="products.jsp?query='Surrealism'">Surrealism</a></li>
												</ul>
										<hr class="hidden-md hidden-lg">
									</div>
									
							</div>
						</li>
					
						<li class="dropdown side-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"> International Style <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>	
												<h3 class="list-links-title">International Style</h3></li>
												<li><a href="products.jsp?query='Chinese Style'">Chinese Style</a></li>
												<li><a href="products.jsp?query='Japanese Style'">Japanese Style</a></li>
												</ul>
										
									</div>
									
								</div>
							</div>
						</li>
						<li class="dropdown side-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"> Indian Style<i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<li>
												<h3 class="list-links-title">Indian Style</h3></li>
												<li><a href="products.jsp?query='Mughal Miniature Paintings'">Mughal Miniature Paintings</a></li>
												<li><a href="products.jsp?query='Rajput Paintings'">Rajput Paintings</a></li>
												<li><a href="products.jsp?query='Tanjore Paintings'">Tanjore Paintings</a></li>
												<li><a href="products.jsp?query='Madhubani Style'">Madhubani Style</a></li>
											</ul>
										
									</div>
									
								</div>
							</div>
						</li>						
						<li class="dropdown side-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true"> Painting Techniques <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Painting Techniques</h3></li>
												<li><a href="products.jsp?query='Oil Painting'">Oil Painting</a></li>
												<li><a href="products.jsp?query='Watercolor Painting'">Watercolor Painting</a></li>
												<li><a href="products.jsp?query='Pastel Painting'">Pastel Painting</a></li>
												<li><a href="products.jsp?query='Acrylic Painting'">Acrylic Painting</a></li>
												<li><a href="products.jsp?query='Charcoal Drawing'">Charcoal Drawing</a></li>
												<li><a href="products.jsp?query='Coloured Pencil'">Coloured Pencil</a></li>
												<li><a href="products.jsp?query='Pencil Sketch'">Pencil Sketch</a></li>
												<li><a href="products.jsp?query='Ink Painting'">Ink Painting</a></li>
												<li><a href="products.jsp?query='Ball Point Pen Art'">Ball Point Pen Art</a></li>
												<li><a href="products.jsp?query='Collage Painting'">Collage Painting</a></li>
												<li><a href="products.jsp?query='Sand Painting'">Sand Painting</a></li>
												<li><a href="products.jsp?query='Encaustic Painting'">Encaustic Painting</a></li>
												<li><a href="products.jsp?query='Gouache Painting'">Gouache Painting</a></li>
												<li><a href="products.jsp?query='Tempera Painting'">Tempera Painting</a></li>
												<li><a href="products.jsp?query='Digital Painting'">Digital Painting</a></li>
											
												</ul>
										
									</div>
									
								</div>
							</div>
						</li>
						<li class="dropdown side-dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Artists <i class="fa fa-angle-right"></i></a>
							<div class="custom-menu">
								<div class="row">
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
											</ul>
										<hr>
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
											</ul>
										<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
												</ul>
										<hr>
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
											</ul>
										<hr class="hidden-md hidden-lg">
									</div>
									<div class="col-md-4">
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
												</ul>
										<hr>
										<ul class="list-links">
											<li>
												<h3 class="list-links-title">Categories</h3></li>
												<li><a href="#">Categories 1</a></li>
												<li><a href="#">Categories 2</a></li>
												<li><a href="#">Categories3</a></li>
												<li><a href="#">Categories4</a></li>
												<li><a href="#">Categories5</a></li>
												</ul>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
				<!-- /category nav -->

				<!-- menu nav -->
				<div class="menu-nav">
					<span class="menu-header">Menu <i class="fa fa-bars"></i></span>
					<ul class="menu-list">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="Exhibition.jsp">Exhibition</a></li>
						<li><a href="AboutPaintings.jsp">About Paintings</a></li>
						<li><a href="AboutUs.jsp">About Us</a></li>
						<li class="dropdown default-dropdown"><a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Pages <i class="fa fa-caret-down"></i></a>
							<ul class="custom-menu">
								<li><a href="index.jsp">Home</a></li>
								<li><a href="products.jsp">Products</a></li>
								<li><a href="product-page.jsp">Product Details</a></li>
								<li><a href="checkout.jsp">Checkout</a></li>
							</ul>
						</li>
						<li>
							<form class="form-inline my-2 my-lg-0">
      							<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
     							<button class="btn primary-btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    						</form>
						</li>
					</ul>
				</div>	
				<!-- menu nav -->
			</div>
		</div>
		<!-- /container -->
	</div>
	<!-- /NAVIGATION -->

	<!-- BREADCRUMB -->
	<div id="breadcrumb">
		<div class="container">
			<ul class="breadcrumb">
				<li><a href="index">Home</a></li>
				<li class="active">Login</li>
			</ul>
		</div>
	</div>
	<!-- /BREADCRUMB -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				
	<!-- FROM -->
	<div class="col-md-6 col-sm-6 col-xs-6">
			<form class="form-horizontal" action="CustomerLogin" method="post">
					<div class="form-group">
					  <label class="control-label col-sm-2" for="mobile">Mobile:</label>
					  <div class="col-sm-6">
						<input type="tel" pattern="[0-9]{10}" class="form-control" name="mobile" placeholder="Enter mobile number">
					  </div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-2" for="pwd">Password:</label>
					  <div class="col-sm-6"> 
						<input type="password" pattern="[A-Z]{1}" class="form-control" name="pwd" placeholder="Enter password">
					  </div>
					</div>
					
						  
					<div class="form-group"> 
					  <div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-info">Sign-In</button>
					  </div>
					</div>
				  </form>
	</div>
	<div class="container col-md-6 col-sm-6 col-xs-6">
			<form class="form-horizontal" action="CustomeRregister" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="name">Name:</label>
						<div class="col-sm-8">
						<input type="text" class="form-control" name="name" placeholder="Enter Full Name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="Mobile">Mobile Number:</label>
						<div class="col-sm-8">
						<input type="tel" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" class="form-control" name="mobile" placeholder="Enter Mobile Number">
						</div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-2" for="email">Email:</label>
					  <div class="col-sm-8">
						<input type="email" class="form-control" name="email" placeholder="Enter email">
					  </div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-2" for="pwd">Password:</label>
					  <div class="col-sm-8"> 
						<input type="password" pattern="[A-Z]{1}" class="form-control" name="pwd" placeholder="Enter password">
					  </div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd1">Confirm Password:</label>
						<div class="col-sm-8"> 
						<input type="password" pattern="[A-Z]{1}" class="form-control" name="pwd1" placeholder="Re-enter password">
						</div>
					</div>
					
					<div class="form-group"> 
					  <div class="col-sm-offset-2 col-sm-8">
						<button type="submit" class="btn btn-info">Sign-Up</button>
					  </div>
					</div>
				  </form>
	</div>
	  <!-- /FROM -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
		
	</div>
	<!-- /section -->

	<!-- FOOTER -->
	<footer id="footer" class="section section-grey">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<!-- footer logo -->
						<div class="footer-logo">
							<a class="logo" href="#">
		            <img src=".<%=asse[2] %>" alt="">
		          </a>
						</div>
						<!-- /footer logo -->

						<p><%=asse[3] %> </p>

						<!-- footer social -->
						<ul class="footer-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						</ul>
						<!-- /footer social -->
					</div>
				</div>
				<!-- /footer widget -->

				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">My Account</h3>
						<ul class="list-links">
							<li><a href="Customer.jsp">My Account</a></li>
							<li><a href="#">Checkout</a></li>
							<li><a href="login">Login</a></li>
						</ul>
					</div>
				</div>
				<!-- /footer widget -->

				<div class="clearfix visible-sm visible-xs"></div>

				<!-- footer widget -->
				<div class="col-md-3 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Customer Service</h3>
						<ul class="list-links">
							<li><a href="AboutUs.jsp">About Us</a></li>
							<li><a href="slogin.jsp">Sell Here</a></li>
						</ul>
					</div>
				</div>
				<!-- /footer widget -->

				<!-- footer subscribe -->
				<div class="col-md-2 col-sm-6 col-xs-6">
					<div class="footer">
						<h3 class="footer-header">Stay Connected</h3>
						<p><%=asse[4] %></p>
						<form>
							<div class="form-group">
								<input class="input" placeholder="Enter Email Address">
							</div>
							<button class="primary-btn">Join Newslatter</button>
						</form>
					</div>
				</div>
				<!-- /footer subscribe -->
			</div>
			<!-- /row -->
			<hr>
			<!-- row -->
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<!-- footer copyright -->
					<div class="footer-copyright">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy2019 All rights reserved by <a href="https://redempirical.com" target="_blank">Redempirical</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<!-- /footer copyright -->
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>

</html>
