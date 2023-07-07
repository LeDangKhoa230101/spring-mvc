<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>

<link href="/css/main.css" rel="stylesheet" type="text/css"/>
<link href="/css/register.css" rel="stylesheet" type="text/css"/>

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
	<div class="register-main">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">
					Đăng ký
				</h5>
			</div>
			<div class="modal-body"> 
				<form action="register" method="post" class="signup-form" commandName="user">
					<div class="form-body">
						<label for="email" class="form-label">Email:</label> 
						<input id="email-signup" type="email" name="email" class="form-control form-input" placeholder="name@example.com">
						<span class="email-error--signup error"></span>
					</div>
					<div class="form-body">
						<label for="firstName" class="form-label">Tên:</label> 
						<input id="firstName-signup" type="text" name="firstName" class="form-control form-input">
						<span class="firstName-error--signup error"></span>
					</div>
					<div class="form-body">
						<label for="lastName" class="form-label">Họ:</label> 
						<input id="lastName-signup" type="text" name="lastName" class="form-control form-input">
						<span class="lastName-error--signup error"></span>
					</div>
					<div class="form-body">
						<label for="password" class="form-label">Mật khẩu:</label> 
						<input id="pass-signup" type="password" name="password" class="form-control form-input password">
						<span class="pass-error-signup error"></span>
						<p class="eye-btn eye-signup" id="eye-pass">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
  								<path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  								<path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
							</svg>
						</p>
						<p class="eye-btn eye-signup" id="eye-slash--pass">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
  								<path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
  								<path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
  								<path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
							</svg>
						</p>
					</div>
					<div class="form-body">
						<label for="confim-password" class="form-label">Nhập lại mật khẩu:</label> 
						<input id="confirm-pass" type="password" name="confirmPassword" class="form-control form-input confim-password">
						<span class="confirm-pass-error--signup error"></span>
						<p class="eye-btn eye-signup-confirm" id="eye-confirm-pass">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
  								<path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  								<path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
							</svg>
						</p>
						<p class="eye-btn eye-signup-confirm" id="eye-slash-confirm--pass">
							<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
  								<path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486l.708.709z"/>
  								<path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829l.822.822zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829z"/>
  								<path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
							</svg>
						</p>
						</div>
					<button type="submit" class="btn-login">Đăng ký</button>
				</form>
			</div>
			<div class="modal-footer">
				Bạn đã có tài khoản?
				<a 
					href="/login"
					class="footer-btn" 
				>
					Đăng nhập
				</a>
			</div>
		</div>
	</div>
	
<script>
	$(document).ready(function () {
		// xem mật khẩu signup form
		$("#eye-slash--pass").click(function() {
			$(".password").attr('type', 'text')
			$("#eye-slash--pass").css('display', 'none')
			$("#eye-pass").css('display', 'block')
		})
		$("#eye-pass").click(function() {
			$(".password").attr('type', 'password')
			$("#eye-pass").css('display', 'none')
			$("#eye-slash--pass").css('display', 'block')
		})
		
		// xem nhập lại mật khẩu signup form
		$("#eye-slash-confirm--pass").click(function() {
			$(".confim-password").attr('type', 'text')
			$("#eye-slash-confirm--pass").css('display', 'none')
			$("#eye-confirm-pass").css('display', 'block')
		})
		$("#eye-confirm-pass").click(function() {
			$(".confim-password").attr('type', 'password')
			$("#eye-confirm-pass").css('display', 'none')
			$("#eye-slash-confirm--pass").css('display', 'block')
		})
		
		// validate form register
		$("#email-signup").blur(function() {
			var email = $("#email-signup").val()
			var regex = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/
			if(regex.test(email)){
				$(".email-error--signup").text("")
				$("#email-signup").css('border', '1px solid #04f414')
			}
			if(email === "") {
				$(".email-error--signup").text("Email là bắt buộc")
				$("#email-signup").css('border', '1px solid red')
			}
			if(!regex.test(email) && email !== "") {
				$(".email-error--signup").text("Email không đúng định dạng")
				$("#email-signup").css('border', '1px solid red')
			}
			$.get("/check-email", {email}).done((exists) => {
				if(email !== "" && exists) {
					$(".email-error--signup").text("Email đã tồn tại")
					$("#email-signup").css('border', '1px solid red')
				}
			})
		})
		
		$("#lastName-signup").blur(function() {
			var lastName = $("#lastName-signup").val()
			if(lastName === "") {
				$(".lastName-error--signup").text("Họ là bắt buộc")
				$("#lastName-signup").css('border', '1px solid red')
			} else {
				$(".lastName-error--signup").text("")
				$("#lastName-signup").css('border', '1px solid #04f414')
			}
		})
		$("#firstName-signup").blur(function() {
			var firstName = $("#firstName-signup").val()
			if(firstName === "") {
				$(".firstName-error--signup").text("Tên là bắt buộc")
				$("#firstName-signup").css('border', '1px solid red')
			} else {
				$(".firstName-error--signup").text("")
				$("#firstName-signup").css('border', '1px solid #04f414')
			}
		})
		$("#pass-signup").blur(function() {
			var pass = $("#pass-signup").val()
			if(pass === "") {
				$(".pass-error-signup").text("Mật khẩu là bắt buộc")
				$("#pass-signup").css("border", "1px solid red")
				$(".eye-signup").css("color", "red")
			} else {
				$(".pass-error-signup").text("")
				$("#pass-signup").css("border", "1px solid #04f414")
				$(".eye-signup").css("color", "#04f414")
			}
			if(pass.length >= 1 && pass.length < 6) {
				$(".pass-error-signup").text("Mật khẩu ít nhất 6 ký tự")
				$("#pass-signup").css("border", "1px solid red")
				$(".eye-signup").css("color", "red")
			}
		})
		$("#confirm-pass").blur(function() {
			var confirmPass = $("#confirm-pass").val()
			var pass = $("#pass-signup").val()
			if(confirmPass === "") {
				$(".confirm-pass-error--signup").text("Nhập lại mật khẩu")
				$("#confirm-pass").css("border", "1px solid red")
				$(".eye-signup-confirm").css("color", "red")
			} else {
				$(".confirm-pass-error--signup").text("")
				$("#confirm-pass").css("border", "1px solid #04f414")
				$(".eye-signup-confirm").css("color", "#04f414")
			}
			if(confirmPass !== pass && confirmPass.length >= 1 || 
					confirmPass.length < 6 && confirmPass === pass) {
				$(".confirm-pass-error--signup").text("Mật khẩu không trùng khớp")
				$("#confirm-pass").css("border", "1px solid red")
				$(".eye-signup-confirm").css("color", "red")
			}
		})
		$(".signup-form").submit(function(e) {
			var email = $("#email-signup").val()
			var lastName = $("#lastName-signup").val()
			var firstName = $("#firstName-signup").val()
			var pass = $("#pass-signup").val()
			var confirmPass = $("#confirm-pass").val()
			if(email === "") {
				e.preventDefault();
		        e.stopPropagation();
		        $(".email-error--signup").text("Email là bắt buộc")
				$("#email-signup").css('border', '1px solid red')
			} 
			if(lastName === "") {
				e.preventDefault();
		        e.stopPropagation();
		        $(".lastName-error--signup").text("Họ là bắt buộc")
				$("#lastName-signup").css('border', '1px solid red')
			}
			if(firstName === "") {
				e.preventDefault();
		        e.stopPropagation();
		        $(".firstName-error--signup").text("Tên là bắt buộc")
				$("#firstName-signup").css('border', '1px solid red')
			} 
			if(pass === "") {
				e.preventDefault();
		        e.stopPropagation();
		        $(".pass-error-signup").text("Mật khẩu là bắt buộc")
				$("#pass-signup").css("border", "1px solid red")
				$(".eye-signup").css("color", "red")
			}
			if(confirmPass === "") {
				e.preventDefault();
		        e.stopPropagation();
		        $(".confirm-pass-error--signup").text("Nhập lại mật khẩu")
				$("#confirm-pass").css("border", "1px solid red")
				$(".eye-signup-confirm").css("color", "red")
			}
			if(confirmPass !== pass && confirmPass.length >= 1) {
				e.preventDefault();
		        e.stopPropagation();
				$(".confirm-pass-error--signup").text("Mật khẩu không trùng khớp")
				$("#confirm-pass").css("border", "1px solid red")
				$(".eye-signup-confirm").css("color", "red")
			}
		})
	})
</script>

</body>
</html>