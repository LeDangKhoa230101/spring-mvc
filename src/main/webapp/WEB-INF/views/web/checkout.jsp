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
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<!-- Bao gồm Boostrap5 -->
	<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Bao gồm Bootstrap 5 JS -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- Bootstrap Icon -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<title>CheckOut</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

<form action="/checkout" method="POST" style="max-width: 1280px; margin: 112px auto 0;" >
	<div class="container">
	  <div class="row ">
	    <div class="col-6">
	      <div class="infomation-left container" style="float: left; padding-left: 12px;font-size: small">
			<div class="title text-center"  style="margin-top: 30px">
				<svg style="width: 380px" fill="currentColor" viewBox="0 0 292.4 12.404" xmlns="http://www.w3.org/2000/svg">
			        <path transform="translate(-3.8 -3.798)" d="M3.849,15.859H7.085a5.619,5.619,0,0,0,5.687-5.884A5.562,5.562,0,0,0,7.085,4.092H3.8V15.86h.049ZM6.153,6.1h.393c2.6,0,3.922,1.324,3.922,3.873,0,2.305-1.079,3.874-3.922,3.874H6.153V6.1Zm21.916,7.3.882,2.5H31.4L26.941,3.847H25.176l-4.56,12.06h2.4l.98-2.5Zm-.638-1.863H24.637L25.91,7.28h.05l1.47,4.265Zm13.385,4.315h2.3V7.916h.05l6.177,8.237h1.666V4.141h-2.3v7.894h-.049L42.484,3.8H40.817v12.06ZM64.546,4.14H62.24V15.907h2.3V4.14ZM82.44,6.1V4.092H76.36V15.86h6.08V13.85H78.665V10.663h3.628V8.653H78.665v-2.6H82.44V6.1Zm13.973-1.96h-2.3V15.908h5.54V13.9H96.413V4.14Zm24.66,0h-2.4L122.4,16.153h1.666l2.207-7.7h.049l2.353,7.7h1.667l3.971-12.012h-2.4l-2.3,7.992h-.05l-2.45-8.188h-1.374l-2.353,8.188h-.049l-2.255-7.992ZM149.216,6.1V4.092h-6.08V15.86h6.08V13.85H145.44V10.663h3.628V8.653H145.44v-2.6h3.776V6.1ZM162.7,4.142h-2.3V15.908h5.54V13.9H162.7V4.14Zm15.885,0h-2.3V15.908h5.54V13.9h-3.236V4.14Zm16.915,0h-2.3V15.908h2.3V4.14Zm12.3,11.717h2.3V7.916h.049l6.177,8.237H218V4.141h-2.3v7.894h-.05L209.47,3.8H207.8v12.06Zm26.28-6.227v1.863h2.5a2.746,2.746,0,0,1-2.7,2.648c-2.206,0-3.334-2.157-3.334-4.118s1.079-4.217,3.285-4.217a3.07,3.07,0,0,1,2.7,1.863l2.01-1.078a5.007,5.007,0,0,0-4.658-2.8c-3.53,0-5.736,2.893-5.736,6.227,0,3.235,2.157,6.128,5.589,6.128,3.628,0,5.344-2.942,5.344-6.276V9.583h-5v.05Zm19.66-3.53h2.352V4.092h-7.01V6.1h2.353v9.757h2.3V6.1ZM270.9,16.2a5.941,5.941,0,0,0,5.834-6.227,5.844,5.844,0,1,0-11.668,0A5.941,5.941,0,0,0,270.9,16.2Zm0-10.149a3.693,3.693,0,0,1,3.432,3.824c0,1.765-1.52,4.02-3.432,4.02-1.961,0-3.432-2.255-3.432-4.02A3.689,3.689,0,0,1,270.9,6.053ZM286,15.859h2.3V7.916h.049l6.177,8.237H296.2V4.141h-2.3v7.894h-.05L287.669,3.8H286v12.06Z"></path>
			    </svg>
			</div>
			<div class="cart_info " style="margin-top: 30px">
				<div class="d-flex align-items-center justify-content-start gap-3">
		 			 <div class="fw-bold" >
		 			 	<a href="/cart" style="color: black;">Cart</a>
		 			 </div>
		  				<i class="bi bi-chevron-right"></i>
		 			 <div class="fw-bold" style="color: #d89999">Information</div>
		  				<i class="bi bi-chevron-right"></i>
		  			 <div class="fw-bold" style="color: #3d3b3b9e">Shipping</div>
		  				<i class="bi bi-chevron-right"></i>
		  			 <div class="fw-bold" style="color: #3d3b3b9e">Payment</div>
				</div>
			</div>
			<div class="contact_form" style="margin-top: 40px;">
				<label style="font-size: 20px">CONTACT INFORMATION</label>
				<div class="form-floating mb-3"> 
	  				<input value="${user.email}" type="email" class="form-control" id="floatingInput" placeholder="Email" id="email" name="email"  style="margin-top: 12px;height: 44px;font-size: 15px">
	  				<label for="floatingInput">Email</label>
				</div>
				<div class="mb-3 form-check">
	    			<input type="checkbox" class="form-check-input" id="exampleCheck1">
	    			<label class="form-check-label" for="exampleCheck1">	Email me with news and offers</label>
	  			</div>
			</div>
			<!-- Info -->
			<div class="address_ship" style="margin-top: 40px;">
				<label for="exampleFormControlInput1" class="form-label" style="font-size: 20px" >SHIPPING ADDRESS</label>
					<div class="form-floating">
	  					<select class="form-select" id="floatingSelect" style="height: 44px;font-size: 12px;margin-top: 12px" aria-label="Floating label select example">
	   				 		<option selected>Vietnam</option>
	   					 	<option value="1">USA</option>
	    					<option value="2">Korea</option>
	  					  	<option value="3">Thailand</option>
	 				 	</select>
	 					<label for="floatingSelect ">Country/region</label>
					</div>
					<div class="row" style="margin-top: 20px">
	  					<div class="col">
	  						<div class="form-floating">
	  							<input value="${user.lastName}" type="text" class="form-control" id="floatingInput" placeholder="First name" id="lastName" name="lastName" style="height: 44px;font-size: 15px" >
	    						<label for="floatingInput">Họ</label>
	  						</div>  					
	  					</div>
	  					<div class="col">
	  						<div class="form-floating ">
	  							<input value="${user.firstName}" type="text" class="form-control" id="floatingInput" placeholder="Last name" id="firstName" name="firstName" style="height: 44px;font-size: 15px" >
	    						<label for="floatingInput">Tên</label>
	  						</div>   					
	  					</div>
					</div>
					
	    			<div class="form-floating col">
	    				<input value="${user.address}" style="margin-top: 20px;height: 44px;font-size: 15px" class="form-control" id="floatingInput" type="text" name="deliveryAddress" placeholder="Address" aria-label="Address" required>
	    				<label for="floatingInput">Địa Chỉ</label>
	    			</div>
	  					
					<div class="form-floating col">
	    				<input value="${user.phone}" style="margin-top: 20px;height: 44px;font-size: 15px" class="form-control" id="floatingInput" type="text" name="phone" placeholder="Phone" aria-label="Phone" >
	    				<label for="floatingInput">Số Điện Thoại</label>
	    			</div>
	    			<div class="form-floating col">
	  					<textarea style="margin-top: 20px;height: 100px;font-size: 15px" class="form-control" name="orderStatus" id="orderStatus" required></textarea>
	  					<label for="floatingTextarea2">Ghi Chú</label>
					</div>
	    			<div class="mb-3 form-check" style="margin-top: 20px">
	    				<input type="checkbox" class="form-check-input" id="exampleCheck2">
	    				<label class="form-check-label" for="exampleCheck2">	Save this information for next time</label>
	  				</div>
	  			
	  			<div class="footer" style="margin-top: 40px">
					<div class="button_go_shopping">
						<div class="d-flex align-items-center justify-content-between">
		  					<i class="bi bi-chevron-left"></i>
		 					<a href="/cart"  style="color: black;text-decoration: none;padding-right: 180px">Trở Về Cart</a>
		 					<button type="submit" class="btn btn-dark" style="width: 320px;height: 45px;font-size: 15px">Thanh Toán</button>
						</div>
					</div>		
				</div>
				<div class="border border-Light border-1" style="margin-top: 40px"></div>
				<div class="COMPLEMENTARY ITEMS" style="font-size: 15px;margin-top: 12px">
					<ul class=" list-unstyled" role="list" style="gap:8px;display: flex;flex-wrap: wrap;">
						<li><a style="color: black;" href="#" >Refund policy</a></li>
						<li><a style="color: black;" href="#" >Privacy policy</a></li>
						<li><a style="color: black;" href="#" >Terms of service</a></li>			
					</ul>
				</div>
			</div>
		</div>
	  </div>
	<!-- CHi tiet SP-->
	    <div class="col-6">
	      <div class="order-summary" style="background: #efecec;padding: 0 20px 0;font-size: 20px;font-weight: 100;">
				<div class="table-order-content table-responsive" >
					<table class="product-table" style="margin-top: 80px">
	     				 <caption class="visually-hidden">Shopping cart</caption>
	     				 <thead class="product-table__header">
	       					<tr>
	         					<th scope="col"><span class="visually-hidden">Product image</span></th>
	         					<th scope="col"><span class="visually-hidden">Description</span></th>
	        					<th scope="col"><span class="visually-hidden">Quantity</span></th>
	          					<th scope="col"><span class="visually-hidden">Price</span></th>
	        				</tr>
	      				</thead>
	     				<tbody data-order-summary-section="line-items">
	     					<c:forEach items="${cart.items}" var="item">
	        					<tr class="product" data-product-id="" data-variant-id="" data-product-type="watch" data-customer-ready-visible="">
	         						<td class="product__image" style="width: 250px">
	         							<div class="position-relative">
	  										<img class="img-fluid bg-white rounded-top rounded-end rounded-bottom rounded-start p-1" src="${item.product.image}" alt="Petite Amber - Rose Gold / 28mm">
	  										<div class="product__quantity position-absolute top-0 end-0 p-0">
	    										<span class="badge rounded-pill bg-secondary text-light">${item.quantity}</span>
	  										</div>
										</div>          			
	         						</td>        						
		         			 		<th class="product__description " style="padding-left: 20px;white-space:nowrap" >
		           				 		<span  class="product__description__name ">${item.product.productName}</span>    
		           				 		<span style="font-size: 13px;font-weight: 100;" class="product__description__type "><br>Rose Gold / 28mm</span>  				 
		          					</th>           						  
				          			<td class="product__price">        	
				             			 <span class="order-summary " style="padding-left: 200px;justify-content: flex-end;display: flex;white-space:nowrap"> ${item.product.price * item.quantity}00 VNĐ</span>           			 
				          			</td>
	        					</tr>
					       </c:forEach>
	      			</tbody>
	    		</table>
				<div class="border border-Light border-bottom border-1" style="margin-top: 40px;width: 585px"></div>
				<div class="Subtotal" style="margin-top: 30px">
					<table class="table border-0 table-borderless">
		  				<tbody>
			   				<tr>
			      				<td>Subtotal</td>
			    				  <td style="text-align: center;">${cart.getPriceFormat()} VNĐ</td>
			    			</tr>
		  				</tbody>
					</table>
				</div>
				<div class="border border-Light border-bottom border-1" style="margin-top: 40px;width: 585px"></div>
				<div class="total" style="margin-top: 20px" >
					<table class="table border-0 table-borderless">
	  					<tbody>
	   					 	<tr>
	      						<td  style="font-weight: 500;">Total</td>
	    				  		<td  style="text-align: center;">${cart.getPriceFormat()} VNĐ</td>
	    					</tr>
	  					</tbody>
					</table>
			   </div>
			</div>
			</div>
	    </div>
	  </div>
	</div>
 </form>
		
</body>
</html>