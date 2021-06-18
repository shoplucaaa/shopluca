<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>

<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>${system_name}</title>
<!-- Favicon -->
<link rel="icon" type="image/png"
	href="<c:url value="/views/images/favicon.png"></c:url>">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<c:url value="/views/css/bootstrap.css"></c:url>">
<!-- Magnific Popup -->
<link rel="stylesheet"
	href="<c:url value="/views/css/magnific-popup.min.css"></c:url>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value="/views/css/font-awesome.css"></c:url>">
<!-- Fancybox -->
<link rel="stylesheet"
	href="<c:url value="/views/css/jquery.fancybox.min.css"></c:url>">
<!-- Themify Icons -->
<link rel="stylesheet"
	href="<c:url value="/views/css/themify-icons.css"></c:url>">
<!-- Nice Select CSS -->
<link rel="stylesheet"
	href="<c:url value="/views/css/niceselect.css"></c:url>">
<!-- Animate CSS -->
<link rel="stylesheet"
	href="<c:url value="/views/css/animate.css"></c:url>">
<!-- Flex Slider CSS -->
<link rel="stylesheet"
	href="<c:url value="/views/css/flex-slider.min.css"></c:url>">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="<c:url value="/views/css/owl-carousel.css"></c:url>">
<!-- Slicknav -->
<link rel="stylesheet"
	href="<c:url value="/views/css/slicknav.min.css"></c:url>">

<!-- Eshop StyleSheet -->
<link rel="stylesheet"
	href="<c:url value="/views/css/reset.css"></c:url>">
<link rel="stylesheet" href="<c:url value="/views/style.css"></c:url>">
<link rel="stylesheet"
	href="<c:url value="/views/css/responsive.css"></c:url>">
	
	</head>
<body class="js">
	<fmt:setLocale value="vi_VN" />
	<!-- Preloader -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- End Preloader -->


	<!-- Header -->
	<header class="header shop">
		<!-- Topbar -->


		<div class="header-inner">
			<div class="container">
				<div class="cat-nav-head">
					<div class="row">
						<div class="col-lg-3" style="background-color: black;">
							<div class="all-category">
								<h3  class="cat-heading"><a style="font-weight: 600;" href="<c:url value="/"/>">SHOPLUKA</a></h3>
							</div>
						</div>
						<div class="col-lg-9 col-12" style="background-color: black;">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">
										<div class="nav-inner">
											<ul class="nav main-menu menu navbar-nav"
												style="float: right;">
												<li class="active"><a href="<c:url value="/"/>">Trang chủ</a></li>
												<li><a href="<c:url value="/product"/>">Sản phẩm<span class="new">Mới</span></a></li>
												<li><a href="contact">Liên hệ</a></li>
											</ul>
										</div>
									</div>
								</nav>
								<!--/ End Main Menu -->
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--/ End Header Inner -->
	</header>
	<!--/ End Header -->
	
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="bread-inner">
						<ul class="bread-list">
							<li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
							<li class="active"><a href="blog-single.html">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Breadcrumbs -->
  
	<!-- Start Contact -->
	<section id="contact-us" class="contact-us section">
		<div class="container">
				<div class="contact-head">
					<div class="row">
						<div class="col-lg-8 col-12">
							<div class="form-main">
								<div class="title">
									<h4>Get in touch</h4>
									<h3>Write us a message</h3>
									<h3 style="color:green;">${msg}</h3>
								</div>
								<form class="form" method="post" action="sendemail">
									<div class="row">
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>Your Name<span>*</span></label>
												<input name="name" type="text" placeholder="">
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>Your Subjects<span>*</span></label>
												<input name="subject" type="text" placeholder="">
											</div>
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>Your Email<span>*</span></label>
												<input name="email" type="email" placeholder="">
											</div>	
										</div>
										<div class="col-lg-6 col-12">
											<div class="form-group">
												<label>Your Phone<span>*</span></label>
												<input name="contact" type="text" placeholder="">
											</div>	
										</div>
										<div class="col-12">
											<div class="form-group message">
												<label>your message<span>*</span></label>
												<textarea name="message" placeholder=""></textarea>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group button">
												<button type="submit" class="btn">Send Message</button>
												<button type="reset" class="btn" style="background-color:red">Reset Message</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="col-lg-4 col-12">
							<div class="single-head">
								<div class="single-info">
									<i class="fa fa-phone"></i>
									<h4 class="title">Call us Now:</h4>
									<ul>
										<li>+123 456-789-1120</li>
										<li>+522 672-452-1120</li>
									</ul>
								</div>
								<div class="single-info">
									<i class="fa fa-envelope-open"></i>
									<h4 class="title">Email:</h4>
									<ul>
										<li><a href="mailto:info@yourwebsite.com">info@yourwebsite.com</a></li>
										<li><a href="mailto:info@yourwebsite.com">support@yourwebsite.com</a></li>
									</ul>
								</div>
								<div class="single-info">
									<i class="fa fa-location-arrow"></i>
									<h4 class="title">Our Address:</h4>
									<ul>
										<li>KA-62/1, Travel Agency, 45 Grand Central Terminal, New York.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!--/ End Contact -->
	
	<!-- Map Section -->
	<div class="map-section">
		<div id="myMap"></div>
	</div>
	<!--/ End Map Section -->
	
	<!-- Start Shop Newsletter  -->
	<section class="shop-newsletter section">
		<div class="container">
			<div class="inner-top">
				<div class="row">
					<div class="col-lg-8 offset-lg-2 col-12">
						<!-- Start Newsletter Inner -->
						<div class="inner">
							<h4>Newsletter</h4>
							<p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
							<form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
								<input name="EMAIL" placeholder="Your email address" required="" type="email">
								<button class="btn">Subscribe</button>
							</form>
						</div>
						<!-- End Newsletter Inner -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Shop Newsletter -->
	
	<!-- Start Footer Area -->
	<footer class="footer">
		<!-- Footer Top -->
		<div class="footer-top section">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer about">
							<div class="logo">
								<a href="index"><img src="<c:url value="/views/images/logo2.png"></c:url>"
									alt="#"></a>
							</div>
							<p class="text">Praesent dapibus, neque id cursus ucibus,
								tortor neque egestas augue, magna eros eu erat. Aliquam erat
								volutpat. Nam dui mi, tincidunt quis, accumsan porttitor,
								facilisis luctus, metus.</p>
							<p class="call">
								Got Question? Call us 24/7<span><a href="tel:123456789">+0123
										456 789</a></span>
							</p>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-2 col-md-6 col-12"></div>
					<div class="col-lg-2 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer links">
							<h4>Admin Services</h4>
							<ul>
								<li><a href="adminlogin">Admin login</a></li>

							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
					<div class="col-lg-3 col-md-6 col-12">
						<!-- Single Widget -->
						<div class="single-footer social">
							<h4>Get In Tuch</h4>
							<!-- Single Widget -->
							<div class="contact">
								<ul>
									<li>NO. 342 - London Oxford Street.</li>
									<li>012 United Kingdom.</li>
									<li>info@eshop.com</li>
									<li>+032 3456 7890</li>
								</ul>
							</div>
							<!-- End Single Widget -->
							<ul>
								<li><a href="#"><i class="ti-facebook"></i></a></li>
								<li><a href="#"><i class="ti-twitter"></i></a></li>
								<li><a href="#"><i class="ti-flickr"></i></a></li>
								<li><a href="#"><i class="ti-instagram"></i></a></li>
							</ul>
						</div>
						<!-- End Single Widget -->
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Top -->
		<div class="copyright">
			<div class="container">
				<div class="inner">
					<div class="row">
						<div class="col-lg-6 col-12">
							<div class="left">
								<p>
									Copyright © 2020 <a href="http://www.wpthemesgrid.com"
										target="_blank">Wpthemesgrid</a> - All Rights Reserved.
								</p>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="right">
								<img src="<c:url value="/views/images/payment-method.png"/>" alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- /End Footer Area -->

	<!-- Jquery -->
	<script src="<c:url value="/views/js/jquery.min.js"></c:url>"></script>
	<script src="<c:url value="/views/js/jquery-migrate-3.0.0.js"></c:url>"></script>
	<script src="<c:url value="/views/js/jquery-ui.min.js"></c:url>"></script>
	<!-- Popper JS -->
	<script src="<c:url value="/views/js/popper.min.js"></c:url>"></script>
	<!-- Bootstrap JS -->
	<script src="<c:url value="/views/js/bootstrap.min.js"></c:url>"></script>
	<!-- Color JS -->
<%-- 	<script src="<c:url value="/views/js/colors.js"></c:url>"></script> --%>
	<!-- Slicknav JS -->
	<script src="<c:url value="/views/js/slicknav.min.js"></c:url>"></script>
	<!-- Owl Carousel JS -->
	<script src="<c:url value="/views/js/owl-carousel.js"></c:url>"></script>
	<!-- Magnific Popup JS -->
	<script src="<c:url value="/views/js/magnific-popup.js"></c:url>"></script>
	<!-- Waypoints JS -->
	<script src="<c:url value="/views/js/waypoints.min.js"></c:url>"></script>
	<!-- Countdown JS -->
	<script src="<c:url value="/views/js/finalcountdown.min.js"></c:url>"></script>
	<!-- Nice Select JS -->
	<script src="<c:url value="/views/js/nicesellect.js"></c:url>"></script>
	<!-- Flex Slider JS -->
	<script src="<c:url value="/views/js/flex-slider.js"></c:url>"></script>
	<!-- ScrollUp JS -->
	<script src="<c:url value="/views/js/scrollup.js"></c:url>"></script>
	<!-- Onepage Nav JS -->
	<script src="<c:url value="/views/js/onepage-nav.min.js"></c:url>"></script>
	<!-- Easing JS -->
	<script src="<c:url value="/views/js/easing.js"></c:url>"></script>
	<!-- Active JS -->
	<script src="<c:url value="/views/js/active.js"></c:url>"></script>
	
</body>
</html>