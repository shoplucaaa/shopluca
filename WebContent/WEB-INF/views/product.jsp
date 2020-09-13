<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>

<style>
* {
	margin: 0px;
	padding: 0px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
}

.main_warp {
	padding-bottom: 10px;
}

table th {
	background-color: #768776;
}

tr:hover {
	background-color: #f1f1f1;
}

.form-search {
	max-width: 1000px;
	padding: 0px 20px;
	margin: 0px auto 40px;
}

#search {
	background-image:
		url('https://e7.pngegg.com/pngimages/605/56/png-clipart-search-icon-computer-icons-android-desktop-search-button-internet-share-icon-thumbnail.png');
	background-position: 8px 8px;
	background-size: 30px 30px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
}

.listprod {
	box-sizing: border-box;
	max-width: 1000px;
	padding: 0px 20px;
	display: block;
	position: relative;
	margin: auto;
	max-height: 50vh;
	overflow-y: auto;
}

.listprod table {
	margin: 50px auto;
}

input {
	border: 1px solid white;
	text-align: center;
	width: 100%;
	word-break: break-word;
}

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
	padding: 3px 10px;
	text-align: center;
}

.prodimg {
	margin: auto;
}

.return {
	position: relative;
	text-align: center;
	display: block;
	margin: 50px auto;
}

.return a {
	display: flex;
	width: 180px;
	margin: auto;
	border-radius: 0px;
	padding: 0px;
	justify-content: center;
	background-color: #4CAF50;
	border: 2px solid #4CAF50;
	align-items: center;
	font-size: 18px;
	color: #fff;
	font-weight: 600;
	height: 50px;
	text-decoration: none;
	transition: .4s;
}

.return a:hover {
	background: #fff;
	color: #4CAF50;
}

.main_warp .heading-block {
	margin-bottom: 40px;
	text-align: center;
	font-size: 28px;
	line-height: 36px;
	color: #333;
	font-weight: 600;
}

.edit-product {
	padding-top: 80px;
}
</style>
<!-- Meta Tag -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name='copyright' content=''>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title Tag  -->
<title>Eshop - eCommerce HTML5 Template.</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Fancybox -->
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<!-- Themify Icons -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="css/niceselect.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- Flex Slider CSS -->
<link rel="stylesheet" href="css/flex-slider.min.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl-carousel.css">
<!-- Slicknav -->
<link rel="stylesheet" href="css/slicknav.min.css">

<!-- Eshop StyleSheet -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/responsive.css">



</head>
<body class="js">

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
						<div class="col-lg-9 col-12" style="background-color: black;">
							<div class="menu-area">
								<!-- Main Menu -->
								<nav class="navbar navbar-expand-lg">
									<div class="navbar-collapse">
										<div class="nav-inner">
											<ul class="nav main-menu menu navbar-nav">
												<li><a href="/">Home</a></li>
												<li class="active"><a href="product.html">Product<span
														class="new">New</span></a></li>
												<li><a href="contact.html">Contact Us</a></li>
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



	<div class="edit-product">
		<div class="heading-block"
			style="text-align: center; margin-bottom: 30px;">
			<h2>Danh sách sản phẩm</h2>
		</div>
		<div class="form-search">
			<input type="text" id="search" onkeyup="myFunction()"
				placeholder="Tim san pham..">
		</div>
		<div class="listprod">
			<table>
				<tr>
					<th>ID</th>
					<th>Ten san pham</th>
					<th>Loai san pham</th>
					<th>Gia san pham</th>
					<th>Con hang</th>
					<th>Anh san pham</th>
					<th>Mo ta san pham</th>
				</tr>
				<tbody id="items">
					<c:forEach items="${list}" var="s">
						<tr>
							<td>${s.id}</td>
							<td>${s.name}</td>
							<td>${s.type}</td>
							<td>${s.price}</td>
							<td>${s.status}</td>
							<td><img class="prodimg" src="public/images/${s.image}" alt="HTML tutorial" style="width:42px;height:42px;"
								alt="${s.image}" style="width: 42px; height: 42px;"></td>
							<td>${s.description}</td>
						</tr>
					</c:forEach>
					<tr>
						<td>02</td>
						<td>Fuhlen</td>
						<td>Chuot</td>
						<td>100000</td>
						<td>Con hang</td>
						<td><img class="prodimg"
							src="https://png.pngitem.com/pimgs/s/44-448588_symbol-circle-black-computer-mouse-clipart-hd-png.png"
							alt="HTML tutorial" style="width: 42px; height: 42px;"></td>
						<td>Hang Viet Nam chat luong Cao</td>
					</tr>



				</tbody>
			</table>
		</div>
	</div>



	<div class="return">
		<a href="/">Quay lại</a>
	</div>





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
								<a href="index.html"><img src="images/logo2.png" alt="#"></a>
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
							<h4>Customer Service</h4>
							<ul>
								<li><a href="#">Payment Methods</a></li>
								<li><a href="#">Money-back</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Shipping</a></li>
								<li><a href="#">Privacy Policy</a></li>
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
								<img src="images/payments.png" alt="#">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- /End Footer Area -->


	<!-- Jquery -->
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.0.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="js/magnific-popup.js"></script>
	<!-- Waypoints JS -->
	<script src="js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="js/nicesellect.js"></script>
	<!-- Flex Slider JS -->
	<script src="js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="js/easing.js"></script>
	<!-- Active JS -->
	<script src="js/active.js"></script>
	<script>
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#addedimage').attr('src', e.target.result).width(70)
							.height(auto);
				};
				reader.readAsDataURL(input.files[0]);
			}
		}

		$(document)
				.ready(
						function() {
							$("#search")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#items tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>

</body>
</html>