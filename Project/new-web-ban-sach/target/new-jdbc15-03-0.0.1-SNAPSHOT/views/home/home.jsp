<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

<link rel="stylesheet"
	href="http://localhost:8080/new-web-ban-sach/views/home/css/css-home.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

</head>
<body style="padding-bottom: 500px; background-color: background: rgba(249, 249, 249, 1);">
	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<!-- 				<a class="navbar-brand" href="#"> <img src="logo_casestudy.png"
					width="50px" height="50px">
				</a> 
-->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/new-web-ban-sach/admin-home">Admin</a></li>
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
	<div class="left-right">
		<div class="left-side">
			<div class="list-group">
				<c:forEach varStatus="count" var="cate" items="${listCate}">
					<a href="#" class="list-group-item list-group-item-action"
					aria-current="true"> ${cate.nameCategory} </a> 
				</c:forEach>
			</div>
		</div>
		<div class="right-side">
			<c:forEach varStatus="count" var="product" items="${listProduct}">
				<div class="item">
					<img alt="thumbnail" src="<c:url value="${product.thumbnail}"/>"
						class="thumbnail-img">
					<p>
						<c:out value="${product.nameProduct}"></c:out>
					</p>
					<c:out value="${product.price}.000VND"></c:out>
					<c:out value="-${product.discount}%"></c:out>
				</div>
			</c:forEach>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>