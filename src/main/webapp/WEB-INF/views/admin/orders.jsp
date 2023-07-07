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
<title>Hoá Đơn</title>

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
				<a href="/admin/products" style="text-decoration: none;color: #f5f5f5;" class="tab-item">
					Quản lý sản phẩm
				</a>
				<a href="/admin/orders" style="text-decoration: none;color: #f5f5f5;" class="tab-item active">
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
				<div class="tab-pane"></div>
				<div class="tab-pane active">
					<h2>Quản lý hóa đơn</h2>
					<jsp:include page="order-list.jsp"></jsp:include>
				</div>
			</div>
		</div>

	</div>

</body>
</html>