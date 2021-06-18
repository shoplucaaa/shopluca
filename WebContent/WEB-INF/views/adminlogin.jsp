<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="zxx">
<head>

<style>
.login {
	position: relative;
	padding: 1em;
	margin: 100px;
}

.login h2 {
	margin: 30px;
}

.login table {
	border: 1px solid green;
	border-radius: 20px;
	overflow: scroll;
	margin: auto;
}

.login input {
	padding: 5px;
	border: 2px solid blue;
}

.login input:focus {
	background-color: FloralWhite;
}

.login table td {
	text-align: center;
}

.btn-submit {
	margin: auto;
	font-size: 1.2em;
	background-color: #4CAF50;
	color: white;
	padding: 15px 30px;
	border: none;
	cursor: pointer;
	width: auto;
	opacity: 0.9;
	border-radius: 6px;
}

.btn-submit:hover {
	background-color: green;
}

.back {
	margin: auto;
	background-color: #6b6861;
	color: white;
	padding: 10px 30px;
	border: none;
	cursor: pointer;
	width: auto;
	opacity: 0.9;
	border-radius: 6px;
}

.back:hover {
	background-color: grey;
}

.back a {
	color: inherit;
}

.result {
	text-align: center;
}
}
</style>

<script>
	document.getElementById("btn-submit").addEventListener("click",
			validateform());
	function validateform() {
		var username = document.myform.username.value;
		var pass = document.myform.pass.value;
		var retypepass = document.myform.retypepass.value;
		var result = document.getElementById('result');

		//rang buoc username

		//username lon hon 3 ki tu
		if (username.length <= 3) {
			result.innerHTML = "Username must have more than 3 characters";
			result.style.color = "tomato";
			return false;
		}

		//Kiá»m tra Äiá»u kiá»n username
		var expr = /^[A-Za-z0-9_]{4,15}$/;
		if (expr.test(username) == false) {
			result.innerHTML = "Username invalid";
			result.style.color = "yellow";
			return false;
		}

		//Password lon hon 4 ki tu
		if (pass.length <= 4) {
			result.innerHTML = "Password must have more than 4 characters";
			result.style.color = "blue";
			return false;
		}

		//Kiá»m tra password
		if (pass != retypepass) {
			result.innerHTML = "Password reconfirmation does not match";
			result.style.color = "red";
			return false;
		} else {
			result.innerHTML = "Sending successful";
			result.style.color = "green";
		}

	}
</script>
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
								<h3  class="cat-heading"><a href="index">SHOPLUKA</a></h3>
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
												<li class="active"><a href="index">Home</a></li>
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
	<div class="login">
		<form action="login" name="myform" method="post">
			<table>
				<tr>
					<td colspan="2">
						<h2>Login</h2>
					</td>
				</tr>

				<tr>
					<td style="padding-left:">Username</td>
					<td><input type="text" name="username" id="username"
						placeholder="Input name" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="pass"
						placeholder="Enter Password" /></td>
				</tr>
				<!-- 			<tr> -->
				<!-- 				<td>Retype Password</td> -->
				<!-- 				<td><input type="password" id="retypepass" -->
				<!-- 					placeholder="Retype Password" /></td> -->
				<!-- 			</tr> -->
				<tr>
					<td colspan="2" class="result">
						<p id="result">Check login</p>
					</td>
				</tr>
				<tr>
					<td class="sendbutton" colspan="2">
						<button type="submit" id="btn-submit" class="btn-submit">
							Dang nhap</button>
					</td>
				</tr>
				<tr>
					<td colspan="2"><a href="index" class="btn btn-primary"
						style="color: white; margin: 15px; border-radius: 5px;">Tro ve</a>
					</td>
				</tr>

			</table>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
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