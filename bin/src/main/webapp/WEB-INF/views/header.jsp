<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	$(document).ready(function () {
		// search toggle
		$(".search-icon").click(function() {
			$("#search").toggle(200)
		})
		
		// modal usered toggle
		$(".user-img").click(function() {
			$(".modal-usered").toggle()
		})
	})
</script>

<header class="header">
	<div class="contaienr">
		<div class="top-header">
			<div class="header-item--left">
				<!-- Categorys -->
				<button 
					class="menu-icon" 
					data-bs-toggle="offcanvas" 
					data-bs-target="#offcanvasWithBackdrop" 
					aria-controls="offcanvasWithBackdrop"
				>
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  						<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
					</svg>
				</button>
				<div class="offcanvas offcanvas-start cate-menu" tabindex="-1" id="offcanvasWithBackdrop" aria-labelledby="offcanvasWithBackdropLabel">
  					<div class="offcanvas-header cate-header">
    					<h3 class="categorys-heading">Danh mục</h3>
    					<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  					</div>
  					<div class="offcanvas-body cate-body">
  						<ul>
							<li>
								<a href="">Đồng hồ nam</a>
							</li>
							<li>
								<a href="">Đồng hồ nữ</a>
							</li>
							<li>
								<a href="">Đồng hồ chống nước</a>
							</li>
							<li>
								<a href="">Đồng hồ thể thao</a>
							</li>
							<li>
								<a href="">Đồng hồ thông minh</a>
							</li>
							<li>
								<a href="">Phụ kiện đồng hồ</a>
							</li>
						</ul>
  						</div>
				</div>
				<!-- Categorys -->
					
				<!-- Search Menu -->
				<button 
					class="search-icon" 
				>
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
				</button>
				<div id="search">
					<input class="search-input" placeholder="Tìm kiếm...">
				</div>
				<!-- Search Menu -->
			</div>
			
			<div class="header-item--center">
				<a href="" class="logo-icon">
					<svg fill="currentColor" viewBox="0 0 292.4 12.404" xmlns="http://www.w3.org/2000/svg">
						<path transform="translate(-3.8 -3.798)" d="M3.849,15.859H7.085a5.619,5.619,0,0,0,5.687-5.884A5.562,5.562,0,0,0,7.085,4.092H3.8V15.86h.049ZM6.153,6.1h.393c2.6,0,3.922,1.324,3.922,3.873,0,2.305-1.079,3.874-3.922,3.874H6.153V6.1Zm21.916,7.3.882,2.5H31.4L26.941,3.847H25.176l-4.56,12.06h2.4l.98-2.5Zm-.638-1.863H24.637L25.91,7.28h.05l1.47,4.265Zm13.385,4.315h2.3V7.916h.05l6.177,8.237h1.666V4.141h-2.3v7.894h-.049L42.484,3.8H40.817v12.06ZM64.546,4.14H62.24V15.907h2.3V4.14ZM82.44,6.1V4.092H76.36V15.86h6.08V13.85H78.665V10.663h3.628V8.653H78.665v-2.6H82.44V6.1Zm13.973-1.96h-2.3V15.908h5.54V13.9H96.413V4.14Zm24.66,0h-2.4L122.4,16.153h1.666l2.207-7.7h.049l2.353,7.7h1.667l3.971-12.012h-2.4l-2.3,7.992h-.05l-2.45-8.188h-1.374l-2.353,8.188h-.049l-2.255-7.992ZM149.216,6.1V4.092h-6.08V15.86h6.08V13.85H145.44V10.663h3.628V8.653H145.44v-2.6h3.776V6.1ZM162.7,4.142h-2.3V15.908h5.54V13.9H162.7V4.14Zm15.885,0h-2.3V15.908h5.54V13.9h-3.236V4.14Zm16.915,0h-2.3V15.908h2.3V4.14Zm12.3,11.717h2.3V7.916h.049l6.177,8.237H218V4.141h-2.3v7.894h-.05L209.47,3.8H207.8v12.06Zm26.28-6.227v1.863h2.5a2.746,2.746,0,0,1-2.7,2.648c-2.206,0-3.334-2.157-3.334-4.118s1.079-4.217,3.285-4.217a3.07,3.07,0,0,1,2.7,1.863l2.01-1.078a5.007,5.007,0,0,0-4.658-2.8c-3.53,0-5.736,2.893-5.736,6.227,0,3.235,2.157,6.128,5.589,6.128,3.628,0,5.344-2.942,5.344-6.276V9.583h-5v.05Zm19.66-3.53h2.352V4.092h-7.01V6.1h2.353v9.757h2.3V6.1ZM270.9,16.2a5.941,5.941,0,0,0,5.834-6.227,5.844,5.844,0,1,0-11.668,0A5.941,5.941,0,0,0,270.9,16.2Zm0-10.149a3.693,3.693,0,0,1,3.432,3.824c0,1.765-1.52,4.02-3.432,4.02-1.961,0-3.432-2.255-3.432-4.02A3.689,3.689,0,0,1,270.9,6.053ZM286,15.859h2.3V7.916h.049l6.177,8.237H296.2V4.141h-2.3v7.894h-.05L287.669,3.8H286v12.06Z"></path>
					</svg>
				</a>
			</div>
				
			<div class="header-item--right">
				<!-- Modal User -->
				<!-- 
				 -->
				<a class="user-icon" data-bs-toggle="modal" href="#exampleModalToggle" role="button">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  						<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
					</svg>
				</a>
				<!-- Login Form -->
				<%@ include file="login-form.jsp" %>
				
				<!-- Signup Form -->
				<%@ include file="signup-form.jsp" %>
				
				<!-- Đã login -->
				<!-- 
				<a class="user-img">
   					 <img src="https://i.pinimg.com/564x/1d/fb/48/1dfb48b6e69604828b350724e0989eaa.jpg"/>
  				</a>
				 -->
  				<div class="modal-usered">
  					<ul>
    					<li>
    						<a href="#">
    							Tài khoản của tôi
    						</a>
    						<a href="#">
    							Đăng xuất
    						</a>
    					</li>
  					</ul>
  				</div>
				
				<!-- Modal User -->	
					
				<!-- Cart -->
				<button 
					class="cart-icon" 
					data-bs-toggle="offcanvas" 
					data-bs-target="#offcanvasRight" 
					aria-controls="offcanvasRight"
				>
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height=18 fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
  						<path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
					</svg>
					<span class="cart-amount">2</span>
				</button>
				<div class="offcanvas offcanvas-end modal-cart" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
  					<div class="offcanvas-header modal-cart--header">
    					<h5>Giỏ hàng</h5>
    					<button class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  					</div>
  					<div class="offcanvas-body container scrollbar">
    					<div class="row">
							  <div class="col-12 cart-item">
							  		<a href="" class="cart-item--img"> 
							  			<img alt="" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/jts8bmmdfoxjtv9kh7ku.png?v=1678542334&width=300">								  		
							  		</a>
								  	<div class="cart-item--body">
								  		<h5>Petite Lavender</h5>
								  		<p>209.000VNĐ</p>
								  		<div class="cart-item--body-footer">
								  			<div class="cart-item--control">
								  				<button class="cart-item--control-btn">
								  					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-dash" viewBox="0 0 16 16">
  														<path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
													</svg>								  				
								  				</button>
								  				<span>2</span>
								  				<button class="cart-item--control-btn">
								  					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
  														<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
													</svg>
							  					</button>
							  				</div>
							  				<button class="cart-item--btn-close"> 
								  				<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
 													 <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
												</svg>
							  				</button>
							  			</div>
							  		</div>
							  </div>	
						</div>
 					</div>
 					<div class="offcanvas-footer modal-cart--footer">
 						<a href="#" class="modal-cart--footer-btn">Xem giỏ hàng</a>
 						<a href="#" class="modal-cart--footer-btn">Thanh toán (290.000 VNĐ)</a>
 					</div>
				</div>
			</div>
		</div>
			
		<div class="bottom-header">
				<ul>
					<li>
						<a href="">Đồng hồ nam</a>
					</li>
					<li>
						<a href="">Đồng hồ nữ</a>
					</li>
					<li>
						<a href="">Đồng hồ chống nước</a>
					</li>
					<li>
						<a href="">Đồng hồ thể thao</a>
					</li>
					<li>
						<a href="">Đồng hồ thông minh</a>
					</li>
					<li>
						<a href="">Phụ kiện đồng hồ</a>
					</li>
				</ul>
			</div>
	</div>
</header>




















