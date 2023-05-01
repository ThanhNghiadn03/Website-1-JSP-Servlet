<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="stylesheet"
	href="http://localhost:8080/new-web-ban-sach/views/admin/css-admin/css-admin.css">
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
						<li class="nav-item"><a class="nav-link" href="/new-web-ban-sach/admin-home?action=categories">Danh mục</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/new-web-ban-sach/admin-home?action=products">Sản phẩm</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/new-web-ban-sach/admin-home?action=users">Users</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/new-web-ban-sach/admin-home?action=orders">Order</a>
						</li>
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
</body>
</html>