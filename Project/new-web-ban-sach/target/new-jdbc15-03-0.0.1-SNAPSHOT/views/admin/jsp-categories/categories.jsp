<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh mục</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<!-- 				<a class="navbar-brand" href="#"> <img src="logo_casestudy.png"
					width="50px" height="50px">
				</a> -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/new-web-ban-sach/trang-chu">Home</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/new-web-ban-sach/admin-home?action=categories">Danh mục</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/new-web-ban-sach/admin-home?action=products">Sản phẩm</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/new-web-ban-sach/admin-home?action=users">Users</a></li>
						<li class="nav-item"><a class="nav-link"
							href="/new-web-ban-sach/admin-home?action=orders">Order</a></li>
					</ul>
					<form class="d-flex">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</div>
	<center>
			<h2 >Danh sách danh mục</h2>
			<h4>
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
				data-bs-target="#addCate">Thêm
				mới</button>
			</h4>
	</center>
	<div id="addCate" class="modal fade" tabindex="-1"
		aria-labelledby="addNew" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="addNew">Thêm mới danh mục</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="mb-3">
						<input type="text" name="nameCate" class="form-control"
							placeholder="Tên danh mục">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-primary">Thêm mới</button>
				</div>
			</div>
		</div>
	</div>
	<div>
		<table class="table">
			<tr>
				<th>ID</th>
				<th>Tên danh mục</th>
				<th>Chỉnh sửa</th>
				<th>Xoá</th>
				<th>Xem chi tiết</th>
			</tr>
			<c:forEach varStatus="count" var="cate" items="${listCate}">
				<tr>
					<td><c:out value="${cate.idCategory}"></c:out></td>
					<td><c:out value="${cate.nameCategory}"></c:out></td>
					<td><a
						href="/new-web-ban-sach/admin-home?action=editCate&idCategory=${cate.idCategory}"
						style="text-decoration: none">Chỉnh sửa</a></td>
					<td><a
						href="/new-web-ban-sach/admin-home?action=deleteCate&idCategory=${cate.idCategory}"
						style="text-decoration: none">Xoá</a></td>
					<td>
						<a
						href="/new-web-ban-sach/admin-home?action=detailCate&idCategory=${cate.idCategory}"
						style="text-decoration: none">Chi tiết</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>