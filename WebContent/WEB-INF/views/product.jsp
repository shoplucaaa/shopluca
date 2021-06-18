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
	max-height: 80vh;
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
								<h3 class="cat-heading">SHOPLUKA</h3>
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
												<li class="active"><a href="#">Home</a></li>
												<li><a href="product">Product<span class="new">New</span></a></li>
												<li><a href="contact">Contact Us</a></li>
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
				placeholder="Tìm sản phẩm..">
		</div>
		<div class="listprod">
			<table>
				<tr>
					<th>ID</th>
					<th>Tên sản phẩm</th>
					<th>Loại sản phẩm</th>
					<th>Giá sản phẩm</th>
					<th>Còn hàng</th>
					<th>Ảnh sản phẩm</th>
					<th>Mô tả sản phẩm</th>
				</tr>
				<tbody id="items">
					<c:forEach items="${list}" var="s">
						<tr>
							<td>${s.id}</td>
							<td>${s.name}</td>
							<td>${s.type}</td>
							<td>${s.price}</td>
							<td>${s.status? "Còn hàng" : "Hết hàng"}</td>
							<td><img class="prodimg" src="public/images/${s.image}"
								alt="${s.image}" style="width: 42px; height: 42px;"
								alt="${s.image}" style="width: 42px; height: 42px;"></td>
							<td>${s.description}</td>
						</tr>
					</c:forEach>



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
								<a href="index"><img
									src="<c:url value="/views/images/logo2.png"></c:url>" alt="#"></a>
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
								<img src="<c:url value="/views/images/payment-method.png"/>"
									alt="#">
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
	<script src="<c:url value="/views/js/colors.js"></c:url>"></script>
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