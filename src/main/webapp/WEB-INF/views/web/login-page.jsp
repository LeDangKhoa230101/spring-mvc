<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet" type="text/css"/>
<link href="/css/login.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>

<!-- Bao gồm Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Bao gồm Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Bao gồm jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bao gồm Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <!-- Bootstrap Icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
</head>
<body>
	
	<div class="login-main">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Đăng nhập</h5>
			</div>
			<div class="modal-body">
				<form action="/login" method="post" class="login-form">
					 <c:if test="${param.error != null}">
        				<div style="color: red; text-align: center; font-size: 1.2rem;">Email hoặc mật khẩu không hợp lệ</div>
    				</c:if>
					<div class="form-body">
						<label for="email" class="form-label">Email:</label> 
						<input id="email-login" type="email" name="email" class="form-control form-input" placeholder="name@example.com">
						<span class="email-error error"></span>
					</div> 
					<div class="form-body">
						<label for="password" class="form-label">Mật khẩu:</label> 
						<input id="pass-login" type="password" name="password" class="form-control form-input">
						<span class="pass-error error"></span>
						<p class="eye-btn eye eye-login">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
  								<path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  								<path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
							</svg>
						</p>
						<p class="eye-btn eye-slash eye-login">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
  								<path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
  								<path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
  								<path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
							</svg>
						</p>
					</div>
					<button type="submit" class="btn-login">Đăng nhập</button>
				</form>
			</div>
			<div class="modal-footer">
				Tạo tài khoản mới?
				<a 
					href="/register"
					class="footer-btn" 
				>
					Đăng ký
				</a>
			</div>
		</div>
	</div>
		
<script type="text/javascript">
	$(document).ready(function () {
		// xem mật khẩu login form
		$(".eye-slash").click(function() {
			$("#pass-login").attr('type', 'text')
			$(".eye-slash").css('display', 'none')
			$(".eye").css('display', 'block')
		})
		$(".eye").click(function() {
			$("#pass-login").attr('type', 'password')
			$(".eye").css('display', 'none')
			$(".eye-slash").css('display', 'block')
		})
		
		// reset input value
		$(".btn-close").click(function() {
			$(".form-input").val('')
			$(".error").text("")
			$("#email-login").css('border', '1px solid #ced4da')
			$("#pass-login").css("border", "1px solid #ced4da")
			$(".eye-login").css("color", "#ced4da")
			// sign up
			$(".eye-signup").css("color", "#ced4da")
			$(".eye-signup-confirm").css("color", "#ced4da")
			$("#email-signup").css('border', '1px solid #ced4da')
			$("#lastName-signup").css('border', '1px solid #ced4da')
			$("#firstName-signup").css('border', '1px solid #ced4da')
			$("#pass-signup").css("border", "1px solid #ced4da")
			$("#confirm-pass").css("border", "1px solid #ced4da")
		})
		
		// validate login form
		$("#email-login").blur(function() {
			var email = $("#email-login").val()
			var regex = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/
			if(regex.test(email)){
				$(".email-error").text("")
				$("#email-login").css('border', '1px solid #04f414')
			}
			if(email === "") {
				$(".email-error").text("Email là bắt buộc")
				$("#email-login").css('border', '1px solid red')
			}
			if(!regex.test(email) && email !== "") {
				$(".email-error").text("Email không đúng định dạng")
				$("#email-login").css('border', '1px solid red')
			}
		})
		$("#pass-login").blur(function() {
			var pass = $("#pass-login").val()
			if(pass === "") {
				$(".pass-error").text("Mật khẩu là bắt buộc")
				$("#pass-login").css("border", "1px solid red")
				$(".eye-login").css("color", "red")
			} else {
				$(".pass-error").text("")
				$("#pass-login").css("border", "1px solid #04f414")
				$(".eye-login").css("color", "#04f414")
			}
		})
		$(".login-form").submit(function(e) {
			var email = $("#email-login").val()
			var pass = $("#pass-login").val()
			if(email === "") {
				e.preventDefault();
		        e.stopPropagation();
				$(".email-error").text("Email là bắt buộc")
				$("#email-login").css('border', '1px solid red')
			} 
			if(pass === "") {
				e.preventDefault();
		        e.stopPropagation();
				$(".pass-error").text("Mật khẩu là bắt buộc")
				$("#pass-login").css("border", "1px solid red")
				$(".eye-login").css("color", "red")
			}
		})
	})
</script>		
		
</body>
</html>