<%@page import="com.example.CDWeb.model.ShoppingCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<link href="/css/newletter.css" rel="stylesheet" type="text/css" />
<link href="/css/cart-page.css" rel="stylesheet" type="text/css" />
<link href="/css/newletter.css" rel="stylesheet" type="text/css" />
<link href="/css/footer.css" rel="stylesheet" type="text/css" />

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

<title>Giỏ Hàng</title>
</head>
<body>
	
	<div id="cart">
		<jsp:include page="header.jsp"></jsp:include>
		
		<!-- Shop cart -->
		<div class="shop-cart">
			<h1>SHOPPING CART</h1>
			
			<div class="container" style="margin-top: 20px; padding: 0;">
  				<div class="row">
    				<div class="col-lg-7 col-md-12 col-sm-12 col-12">
    					<c:if test="${cart.items.size() == 0}">
    						<h1 style="text-align: center; margin-top: 75px;">Giỏ hàng trống</h1>
    					</c:if> 
    					<c:forEach items="${cart.items}" var="item">
	      					<div class="shop-cart-item">
	      						<a href="#">
	      							<img alt="shop-cart-item--img" src="${item.product.image}">
	      						</a>
	      						<div class="shop-cart-item--detail">
	      							<div class="shop-cart-item--inner">
		      							<a href="#">${item.product.productName}</a>
		      							<span></span>
		      							<p>${item.product.price * item.quantity}00 VNĐ</p>
	      							</div>
		      						<div class="shop-cart-item--controll">
		      							<div class="shop-cart-item--controll-body">
		      								<form action="/remove-cart/${item.product.productid}" method="post">
				      							<button type="submit" class="shop-cart-item--control-btn">
											  		<i class="bi bi-dash"></i>							  				
											  	</button>
								  			</form>  
										  	<span>${item.quantity}</span>
										  	<form action="/add-to-cart/${item.product.productid}" method="post">
											  	<button type="submit" class="shop-cart-item--control-btn">
											  		<i class="bi bi-plus"></i>
										  		</button>
								  			</form> 
		      							</div>
								  		<button class="shop-cart-item--btn-close"> 
								  			<form action="/remove-from-cart/${item.product.productid}" method="post">
											  	<button type="submit" style="font-size: 1.8rem; background-color: transparent;">
												 	<i class="bi bi-trash3"></i> 
										  		</button>
								  			</form>
								  		</button>
		      						</div>
	      						</div>
	      					</div>
    					</c:forEach>
    				</div>
    				<div class="col-lg-5 col-md-12 col-sm-12 col-12 px-5">
      					<div class="cart-summer">
      						<div class="cart-total">
      							<span>Tổng phụ:</span>
      							<span>${cart.getPriceFormat()} VNĐ</span>
      						</div>
      						<a href="/checkout" class="cart-checkout--btn">Thanh toán</a>
      						<span class="cart-fax">ĐÃ BAO GỒM THUẾ. VẬN CHUYỂN ĐƯỢC TÍNH KHI THANH TOÁN</span>
      					</div>
    				</div>
  				</div>
			</div>
		</div>
		
		<!-- new letter -->
		<jsp:include page="newletter.jsp"></jsp:include>
		
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	
<script>
	//Lấy ra danh sách các phần tử trong trang web mà muốn hiển thị sau khi scroll qua
	const elementsToShow = document.querySelectorAll(".show-scroll");
	// Lắng nghe sự kiện scroll trên trang web
	window.addEventListener('scroll', function() {
  		// Lấy vị trí hiện tại của scroll
  		const currentScrollPos = window.pageYOffset;
  		// Duyệt qua danh sách các phần tử muốn hiển thị
  		elementsToShow.forEach(function(element) {
    		// Nếu vị trí của scrollY vượt qua vị trí offsetTop của phần tử đó
    		if (currentScrollPos > element.offsetTop - 500) {
      			// Thêm lớp hiện ra vào phần tử đó để hiển thị nó
      			element.classList.add("show");
    		}
  		});
	});
</script>	
	
</body>
</html>
