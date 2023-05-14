<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản phẩm</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>

	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#deleteProduct" id="myButton" style="visibility: hidden">
		<i class="fa-solid fa-trash"></i>
	</button>
	<div id="deleteProduct" class="modal fade" tabindex="-1"
		aria-labelledby="delete" aria-hidden=true>
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<form method="post">
					<div class="modal-header">
						<h4 class="modal-title" id="addNew">Xoá sản phẩm</h4>
					</div>
					<div class="modal-body">
						<div class="table">
							<tr>
								<td>ID:</td>
								<td>${requestScope["product"].getIdProduct()}</td>
							</tr>
							<tr>
								<td>Name:</td>
								<td>${requestScope["product"].getNameProduct()}</td>
							</tr>
							<tr>
								<td>Price:</td>
								<td>${requestScope["product"].getPrice()}</td>
							</tr>
							<tr>
								<td>Tac gia:</td>
								<td>${requestScope["product"].getTacgia()}</td>
							</tr>

						</div>
					</div>
					<div class="modal-footer">
						<a href="/new-jdbc15-03/admin-home?action=products"><button
								type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button></a>

						<button type="submit" class="btn btn-primary"
							value="deleteProduct">Xoá</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
		integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
	$(document).ready(function() {
			$('#myButton').trigger('click');
		});
	</script>
</body>
</html>