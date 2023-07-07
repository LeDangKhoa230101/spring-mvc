<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form class="profile-form" action="/update-profile" method="post">
	<div>
		<div class="profile-form--body">
			<label>Họ</label> 
			<input type="text" name="lastName" value="${user.lastName}">
		</div>
		<div class="profile-form--body">
			<label>Tên</label> 
			<input type="text" name="firstName" value="${user.firstName}">
		</div>
		<div class="profile-form--body">
			<label>Email</label> 
			<input type="email" name="email" value="${user.email}" readonly="readonly">
		</div>
		<div class="profile-form--body">
			<label>Số điện thoại</label> 
			<input type="number" name="phone" value="${user.phone}">
		</div>
		<div class="profile-form--body">
            <label>Địa chỉ</label> 
            <input type="text" name="address" value="${user.address}"> 
        </div>
		<input value="Cập nhật" type="submit" class="profile-form--btn">
	</div>
	<div style="text-align: center;">
		<div class="profile-form--img">
			<c:if test="${user.avatar == null}">
				<img alt="avatar" id="avatar" src="https://i.pinimg.com/564x/77/c8/d4/77c8d48eccb8ae095a3c3ce24b2fce8e.jpg"/>
			</c:if>
			<c:if test="${user.avatar != null}">
				<img alt="avatar" id="avatar" src="${user.avatar}"/>
			</c:if>
		</div>
		<input id="avatar-input" name="avatar" style="display: none;" type="file" accept=".jpg, .jpeg, .png">
		<button onclick="chooseFile()" class="profile-form--img-btn" type="button">Chọn ảnh</button>
		<p class="dinhdang">Định dạng: .JPG, .JPEG, .PNG</p>
	</div>
</form>


<script>
	//avatar update
	const avatarInput = document.getElementById("avatar-input");
	const avatar = document.getElementById("avatar");

	function chooseFile() {
		avatarInput.click();
	}
	avatarInput.addEventListener("change", function() {
		var reader = new FileReader();
	
		reader.onload = function(e) {
			avatar.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	})
</script>


