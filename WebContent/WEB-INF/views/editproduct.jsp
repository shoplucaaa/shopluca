<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
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
	max-height: 60vh;
	overflow-y: auto;
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

.addprod {
	box-sizing: border-box;
	max-width: 1000px;
	padding: 0px 20px;
	display: block;
	position: relative;
	margin: auto;
}

.return {
	position: relative;
	text-align: center;
	display: block;
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

.add-product {
	padding-top: 80px;
	padding-bottom: 80px;
}
</style>
<meta charset="UTF-8">
<title>Danh sach san pham</title>
</head>

<body>

	<div class="main_warp">

		<div class="edit-product">
			<h2 class="heading-block">Chỉnh sửa danh sách sản phẩm</h2>
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
						<th>Sua san pham</th>
						<th>Xoa san pham</th>
					</tr>
					<tbody id="items">
						<c:forEach items="${list}" var="s">
							<tr>
								<td>${s.id}</td>
								<td>${s.name}</td>
								<td>${s.type}</td>
								<td>${s.price}</td>
								<td>${s.status}</td>
								<td><img class="prodimg" src="public/images/${s.image}"
									alt="HTML tutorial" style="width: 42px; height: 42px;"></td>
								<td>${s.description}</td>
								<td><a href="init-update-product?sID=${s.id}"></a></td>
								<td><a href="delete-product?sID=${s.id}"
									onclick="return confirm('Delete <${s.name}>?')"></a></td>
							</tr>
						</c:forEach>




					</tbody>
				</table>
			</div>
		</div>



		<div class="add-product">
			<h2 class="heading-block">Thêm sản phẩm</h2>
			<div class="addprod">
<%-- 				<form:form action="register" modelAttribute="s" --%>
<%-- 					enctype="multipart/form-data"> --%>
					<table class="insert">
						<tr>
							<!--                 <th>ID</th> -->
							<th>Ten san pham</th>
							<th>Loai san pham</th>
							<th>Gia san pham</th>
							<th>Con hang</th>
							<th>Anh san pham</th>
							<th>Mo ta san pham</th>
							<th>Them san pham</th>
						</tr>
						<tr>
							<!--                 <td>2</td> -->
							<td><form:textarea path="name" /> <span class="error"><form:errors
										path="name" /></span></td>
							<td><form:select path="type">

									<form:option value="1">Chuot</form:option>
									<form:option value="2" selected="selected">Ban phim</form:option>
									<form:option value="3">Lot chuot</form:option>
									<form:option value="4">Tai nghe</form:option>
									<form:option value="5">Day sac</form:option>
									<form:option value="5">Loa</form:option>
								</form:select><span class="error"><form:errors path="type" /></span></td>
							<td><form:input path="price" /> <span class="error"><form:errors
										path="price" /></span></td>
							<td><input type="radio" name="Con hang" checked>Con
								hang <br> <input type="radio" name="Con hang"> Het
								hang <form:radiobutton path="status" value="true"
									checked="checked" />Con hhang <form:radiobutton path="status"
									value="false" />Het hang</td>
							<td><img id="addedimage" src="#" alt="Them anh" /> <form:input
									id="imageupload" onchange="readURL(this);" type="file"
									path="image" /><span class="error"><form:errors
										path="image" /></span></td>
							<td><form:textarea path="description" /> <span
								class="error"><form:errors path="description" /></span></td>
							<td>
								<button type="submit">Xac nhan</button>
							</td>
						</tr>
					</table>
<%-- 				</form:form> --%>
			</div>
		</div>
		<div class="return">
			<a href="/">Quay lại</a>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
		
	</script>
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
