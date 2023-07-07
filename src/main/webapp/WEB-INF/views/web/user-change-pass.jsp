<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script type="text/javascript">
	$(document).ready(function() {
		$("#password").blur(function() {
			var pass = $("#password").val()
			if(pass.length >= 1 && pass.length < 6) {
				$(".pass-change").text("Mật khẩu ít nhất 6 ký tự")
				$("#password").css("border", "1px solid red")
			}
			if (pass.length >= 6) {
				$(".pass-change").text("")
				$("#password").css("border", "1px solid #dddddd")
			}
		})
		
		$("#confirmPassword").blur(function() {
			var confirmPass = $("#confirmPassword").val()
			var pass = $("#password").val()
			if(confirmPass !== pass && confirmPass.length >= 1 || 
					confirmPass.length < 6 && confirmPass === pass) {
				$(".confirm-pass-change").text("Mật khẩu không trùng khớp")
				$("#confirmPassword").css("border", "1px solid red")
			}
			if(confirmPass === "" || confirmPass.length >= 6 && confirmPass === pass) {
				$(".confirm-pass-change").text("")
				$("#confirmPassword").css("border", "1px solid #dddddd")
			}
		})
		
		$('input[type="password"]').keyup(function() {
			var pass = $("#password").val()
			var confirmPass = $("#confirmPassword").val()
			if(pass.length >= 6 && confirmPass.length >= 6 && confirmPass === pass) {
				$("#form-change-pass--btn").prop('disabled', false);
				$("#form-change-pass--btn").css('cursor', "pointer");
			} else {
				$("#form-change-pass--btn").prop('disabled', true);
				$("#form-change-pass--btn").css('cursor', "not-allowed");
			}
		})
	})
</script>
	
<form action="/user-profile" method="post" class="form-change-pass">
	<div> 
		<label for="password">Mật khẩu mới:</label> 
		<input type="password" id="password" name="password">
	</div>
		<span style="color: red; display: block; margin: -12px 0 14px 32px;" class="pass-change"></span>
	<div>
		<label for="confirmPassword">Xác nhận mật khẩu:</label> 
		<input type="password" id="confirmPassword" name="confirmPassword">
	</div>
		<span style="color: red; display: block; margin: -12px 0 14px 52px;" class="confirm-pass-change"></span>
	<button type="submit" id="form-change-pass--btn" disabled style="cursor: not-allowed">XÁC NHẬN</button>
</form>







