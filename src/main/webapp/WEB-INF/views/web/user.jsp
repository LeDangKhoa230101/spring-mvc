<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<link href="/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/css/user.css" rel="stylesheet" type="text/css" />
<link href="/css/profile-user.css" rel="stylesheet" type="text/css" />
<link href="/css/user-change-pass.css" rel="stylesheet" type="text/css" />
<link href="/css/user-order.css" rel="stylesheet" type="text/css" />

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

<title>Insert title here</title>
</head>
<body>

	<div id="user">
		<jsp:include page="header.jsp"></jsp:include>
		
		<div class="user-container">
			 <!-- Tab items -->
        	<div class="tabs">
        		<div class="infor-user">
        				<c:if test="${user.avatar == null}">
							<img alt="avatar" src="https://i.pinimg.com/564x/77/c8/d4/77c8d48eccb8ae095a3c3ce24b2fce8e.jpg"/>
						</c:if>
						<c:if test="${user.avatar != null}">
							<img alt="avatar" src="${user.avatar}"/>
						</c:if>
        			<span>${user.lastName} ${user.firstName}</span>
        		</div>
         		 <div class="tab-item active">
            		Hồ sơ
          		</div>
          		<div class="tab-item">
            		Đổi mật khẩu
          		</div>
          		<div class="tab-item">
            		Đơn mua
         		 </div>
        	</div>
      
        	<!-- Tab content -->
        	<div class="tab-content">
          		<div class="tab-pane active">
            		<h2>Hồ sơ của tôi</h2>
            		<jsp:include page="profile-user.jsp"></jsp:include> 
         		</div>
          		<div class="tab-pane">
            		<h2>Đổi mật khẩu</h2>
            		<jsp:include page="user-change-pass.jsp"></jsp:include> 
          		</div>
          		<div class="tab-pane">
          			<jsp:include page="user-order.jsp"></jsp:include>
          		</div>
        	</div>
		</div>
		
		<div class="separate"></div>
		
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	
<script type="text/javascript">
	// tabs ui
	const tabs = document.querySelectorAll('.tab-item');
	const panes = document.querySelectorAll('.tab-pane');
	
	tabs.forEach((tab, index) => {
	    const pane = panes[index];
	
	    tab.onclick = function() {
	        $('.tab-item.active').removeClass('active');
	        $('.tab-pane.active').removeClass('active');
	
	        this.classList.add('active');
	        pane.classList.add('active');
	    }
	})
	
	//Lấy ra danh sách các phần tử trong trang web mà muốn hiển thị sau khi scroll qua
	const elementsToShow = document.querySelectorAll(".show-scroll");
	// Lắng nghe sự kiện scroll trên trang web
	window.addEventListener('scroll', function() {
  		// Lấy vị trí hiện tại của scroll
  		const currentScrollPos = window.pageYOffset;
  		// Duyệt qua danh sách các phần tử muốn hiển thị
  		elementsToShow.forEach(function(element) {
    		// Nếu vị trí của scrollY vượt qua vị trí offsetTop của phần tử đó
    		if (currentScrollPos > element.offsetTop - 600) {
      			// Thêm lớp hiện ra vào phần tử đó để hiển thị nó
      			element.classList.add("show");
    		}
  		});
	});
	
</script>

</body>
</html>
