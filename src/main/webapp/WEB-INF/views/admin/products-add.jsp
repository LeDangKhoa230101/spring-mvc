<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css-admin/main.css" rel="stylesheet" type="text/css" />
<link href="/css-admin/index.css" rel="stylesheet" type="text/css" />

<!-- Bao gồm Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Bao gồm Ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Bao gồm jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bao gồm Bootstrap 5 JS -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<!-- Bootstrap Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>

</head>
<body>

	<div id="admin">
		<!-- Sidebar -->
		<div class="sidebar">
			<div class="sidedbar-header">
				<img alt="logo-admin" src="/images/AdminLTELogo.png"> <span>Admin</span>
			</div>
			<div class="user-admin">
				<img alt="logo-admin" src="/images/user2-160x160.jpg"> 
				<c:if test="${user != null}">
					<span>${user.lastName} ${user.firstName}</span>
				</c:if>
				<c:if test="${user == null}">
					<span>Alex</span>
				</c:if>
			</div>

			<!-- Tab items -->
			<div class="tabs">
				<a href="/admin" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Main Dashboard
				</a>
				<a href="/admin/products" style="text-decoration: none;color: #f5f5f5;" class="tab-item active">
					Quản lý sản phẩm
				</a>
				<a href="/admin/orders" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Quản lý hóa đơn
				</a>
				<c:if test="${user == null}">
					<a href="/admin/login" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
						Đăng nhập
					</a>
					<a href="/admin/register" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
						Đăng ký
					</a>
				</c:if>
				<c:if test="${user != null}">
					<a href="/admin/logout" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
						Đăng xuất
					</a>
				</c:if>
			</div>
		</div>

		<!-- Content -->
		<div class="content">
			<!-- Tab content -->
			<div class="tab-content">
				<div class="tab-pane"></div>
				<div class="tab-pane active">
					<h2>Quản lý sản phẩm</h2>
					
					<jsp:include page="product-add.jsp"></jsp:include>
					
				</div>
				<div class="tab-pane"></div>
			</div>
		</div>

	</div>

<!-- <script type="text/javascript">
	// tab ui
	const tabs = document.querySelectorAll(".tab-item");
	const panes = document.querySelectorAll(".tab-pane");

	tabs.forEach((tab, index) => {
		const pane = panes[index];
		
		tab.onclick = function() {
			$('.tab-item.active').removeClass('active');
			$('.tab-pane.active').removeClass('active');
			
			this.classList.add('active');
			pane.classList.add('active');
		}
	})
	
	// choose file image edit
	const imageInput = document.getElementById("avatar-input");
	const image = document.getElementById("avatar");
	
	function chooseFile() {
		imageInput.click();
	}
	
	imageInput.addEventListener("change", function() {
		var reader = new FileReader();
		
		reader.onload = function(e) {
			image.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	});
	

	// choose file image add
	const imageAddInput = document.getElementById("image-add-input");
	const imageAdd = document.getElementById("image-add");
	
	function chooseFileAdd() {
		imageAddInput.click();
	}
	
	imageAddInput.addEventListener("change", function() {
		var reader = new FileReader();
		
		reader.onload = function(e) {
			imageAdd.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	});
	
	// hiển thị trang edit và add product
	const productManage = $(".product-manage");
	const productEdit = $(".product-edit");
	const productAdd = $(".product-add");
	const editBackBtn = $(".product-edit-back--btn");
	const addBackBtn = $(".product-add-back--btn");
	
	$(document).ready(function() {
		$(".table-btn-edit").click(function() {
			productManage.css("display", "none");
			productEdit.css("display", "block");
		})
		
		editBackBtn.click(function() {
			productManage.css("display", "block");
			productEdit.css("display", "none");
		})
		
		$(".add-product-btn").click(function() {
			productManage.css("display", "none");
			productAdd.css("display", "block");
		})
		
		addBackBtn.click(function() {
			productManage.css("display", "block");
			productAdd.css("display", "none");
		})
	})
	
	// display order detail
	$(document).ready(function() {
		$(".table-btn-eye").click(function() {
			$(".order-manage").css("display", "none");
			$(".order-detail").css("display", "block");
		})
		
		$(".order-back-btn").click(function() {
			$(".order-manage").css("display", "block");
			$(".order-detail").css("display", "none");
		})
	})
	
</script> -->

</body>
</html>