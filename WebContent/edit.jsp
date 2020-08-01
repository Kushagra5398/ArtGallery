<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="com.query" %>
	 <%@page import="com.Index" %>
	 <%@page import="com.assets" %>
	 
    <%
    	  query q=new query();
    		String sid=null;
		    String aid=request.getParameter("aid");
		   try{ sid=session.getAttribute("sid").toString(); }catch(Exception e){}
		  Index img=new Index();
		  assets a=new assets();
		String  asse[]=a.getAssets();
		int start=img.StartingIndex();
    %>
<!DOCTYPE html>
<html lang="en">

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
								<li <%if(sid!=null){ %> hidden ="true"<%;} %>><a href="slogin.jsp"><i class="fa fa-unlock-alt"></i> Login</a></li>
								<li <%if(sid==null){ %> hidden ="true" <%;} %>><a href="slogout.jsp"><i class="fa fa-unlock-alt" ></i> Logout</a></li>
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
  <%

        String data[]=new String[15]; 
  		try
  		{
  			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/makshop","root","");
			Statement st=con.createStatement();
			ResultSet resultSet=st.executeQuery("SELECT * FROM articles where aid="+aid);
			while(resultSet.next())
			{
				data[0]=resultSet.getString(2);
				data[1]=resultSet.getString(3);
				data[2]=resultSet.getString(4);
				data[3]=resultSet.getString(5);
				data[4]=resultSet.getString(6);
				data[5]=resultSet.getString(7);
				data[6]=resultSet.getString(8);
				data[7]=resultSet.getString(9);
				data[8]=resultSet.getString(10);
				data[9]=resultSet.getString(11);
				data[10]=resultSet.getString(12);
				data[11]=resultSet.getString(13);
				data[12]=resultSet.getString(1);
			}
  		}catch(Exception e){out.print(e);}
  %>
	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
			<div class="col-md-10 col-sm-10 col-xs-10">
			<input type="text" name="aid" value=<%=data[12] %> hidden="true">
			<form class="form-horizontal" action="Update" method="post" enctype="multipart/form-data">
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Title">Article Titile</label>
					  <div class="col-sm-6">
						<input type="text" class="form-control" name="Title" placeholder="Enter title" value="<%=data[0]%>">
					  </div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Artist">Artist Name</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="Artist" placeholder="Enter artist Name" value="<%=data[2]%>">
					  </div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Mrp">M.R.P:</label>
					  <div class="col-sm-6">
						<input type="text" class="form-control" name="Mrp" placeholder="Enter M.R.P." value="<%=data[3]%>">
					  </div>
					</div>
					<div class="form-group">
					  <label class="control-label col-sm-4" for="">Selling Price</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="SellinpPrice" placeholder="Enter description" value="<%=data[4]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Quantity">Quantity</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="Quantity" placeholder="Enter description" value="<%=data[6]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="">Location</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="Location" placeholder="Enter description" value="<%=data[5]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Description">Description</label>
					  <div class="col-sm-6"> 
						<input type="textarea" class="form-control" name="Description" placeholder="Enter description" value="<%=data[1]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="painting_style">Painting Style</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="painting_style" placeholder="Enter Painting Style" value="<%=data[9]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="exhibition">Exhibition</label>
					  <div class="col-sm-6"> 
						<input type="textarea" class="form-control" name="exhibition" placeholder="Enter 'yes' or 'no' for Exhibition" value="<%=data[10]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="exhibition_date">Exhibition Date</label>
					  <div class="col-sm-6"> 
						<input type="text" class="form-control" name="exhibition_date" placeholder="Enter Exhibition Date in dd/mm/yyyy" value="<%=data[11]%>">
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="control-label col-sm-4" for="Image">Image</label>
					  <div class="col-sm-6"> 
						<input type="file" class="form-control" name="Image" placeholder="Update Image" >
					  </div>
					</div>
						  
					<div class="form-group"> 
					  <div class="col-sm-offset-4 col-sm-10">
						<button type="submit" class="btn btn-info">Update</button>
					  </div>
					</div>
				  </form>
	          </div>
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
