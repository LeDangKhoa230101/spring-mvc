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
<link href="/css/product-item.css" rel="stylesheet" type="text/css" />

<!-- Bao gồm Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <!-- Bootstrap Icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<!-- Bao gồm Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Bao gồm jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bao gồm Boostrap5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Slick Css -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- Slick JS -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>Product-Details</title>
<script type="text/javascript">
	$(document).ready(function() {
		// toggle class wishlist btn
		$(".product-item--wishlist").click(function() {
			$(this).toggleClass('active')
		})
		
		// slide show 
		var slickOptions = {
			slidesToShow: 4,
			slidesToScroll: 1,
			autoplay: false,
			autoplaySpeed: 2000,
			arrows: false,
			infinite: false,
		}
		 $(".slide-show").slick(slickOptions);
		
		// Custom prev and next btn slide show
		$(".prev-btn").click(function () {
			$(".slide-show").slick("slickPrev");
		});

		$(".next-btn").click(function () {
			$(".slide-show").slick("slickNext");
		});
		
		$(".prev-btn").addClass("disable");
		
		$(".slide-show").on("afterChange", function(event, slick, currentSlide) {
			 if (currentSlide === 0) {
			   	 $(".prev-btn").addClass("disable");
			 } else {
			     $(".prev-btn").removeClass("disable");
			 }
			  
			 if (currentSlide + slickOptions.slidesToShow >= slick.slideCount) {
			   	 $(".next-btn").addClass("disable");
			 } else {
			   	 $(".next-btn").removeClass("disable");
			 }
		});
	})
</script>
</head>
<body>

<div id="main">
<jsp:include page="header.jsp"></jsp:include>

<div style="max-width: 1280px; margin: 112px auto 0;padding-top: 40px;">
	<div class="container">
	  <div class="row ">
	    <div class="col-6"> 
	<!-- hiện thị ảnh -->
	      <div id="carouselExampleDark" class="carousel carousel-dark slide " data-bs-ride="carousel" style="">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active" data-bs-interval="10000">
	      <img src="${productDetail.image}" class="d-block w-100" alt="product-img">
	      <div class="carousel-caption d-none d-md-block">
	        
	      </div>
	    </div>
	    <div class="carousel-item" data-bs-interval="2000">
	      <img src="${productDetail.image}" class="d-block w-100" alt="product-img">
	      <div class="carousel-caption d-none d-md-block">
	        
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="${productDetail.image}" class="d-block w-100" alt="product-img">
	      <div class="carousel-caption d-none d-md-block">
	       
	      </div>
	    </div>
	  </div>
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	      
	    </div>
	    <div class="col-6">
	<!-- hiện thị chi tiết thông tin sp -->
		<div class="product-content d-flex align-items-center justify-content-center " style="">
			<div class="no-stick">
				<div class="product-main-info" style="justify-content: space-between;display: flex;">
					<div class="product-block product-block_title" style="margin-top: 30px">
						<h1 class="fw-light" style="font-size: 30px"> ${productDetail.productName}</h1>
					</div>
					
				<div class="product-block product-block_price" style="margin-top: 30px;flex: 0 0 185px;justify-content: flex-end;display: flex;font-size: 1.6rem">
					<div class="js fw-light" id="price-template" role="status">
						<div class="price">
						 	<div class="price_container">
						 		<div class="price_regular">
						 			<span class="visually-hidden"> Regular price</span>
						 			<span class="price-item price-item--regular" style="font-size: 30px"> ${productDetail.priceFormat} VNĐ</span>
						 		</div>
						 	</div>
						</div>
					</div>
				</div>
				
					
					</div>
				<div class="product-block product-block_sibling_products" style="margin-top: 20px">
					<div class="swatches" >
						<p class="mb-4 small" style="font-size: 1.6rem;"> Color </p>
						<div class="swatches-container " role="button" style="display: flex;--single-swatch-size: 50px;flex-wrap: wrap;gap: 16px">
						<span class="active" style="background: #e5ae87;border-radius: 50%;width: 30px;height: 30px;margin-top: 1px;box-shadow: inset 0 0 0 1px #0000000d, inset 0 0 0 2px #fff, 0 0 0 1.2px #000"></span>
						<button type="button" class="btn btn-outline-dark"style="border-radius: 50%;width: 30px;height: 30px;background: #FF3399;border: 1px;"></button>
						<button type="button" class="btn btn-outline-dark"style="border-radius: 50%;width: 30px;height: 30px;background: #99FF33;border: 1px;"></button>
						
						</div>
				</div>
				</div>
			<div class="product-button" style="margin-top: 12px;font-size: 1.6rem">
				<p id="content"> Size 12mm</p>
			
				<button type="button" id="bt1" class="btn btn-outline-dark">Size 12mm</button>
				<button type="button" id="bt2" class="btn btn-outline-dark">Size 14mm</button>
				<button type="button" id="bt3" class="btn btn-outline-dark">Size 16mm</button>
			
			</div>
			<form  action="/add-to-cart/${productDetail.productid}"  method="post">
			<div class="button-buy-cart d-grid gap-2 col-6 mx-auto" style="height: 45px;width: auto;margin-top: 12px;">
			
				<button type="submit" class="btn btn-dark btn-lg "  style="font-size: 20px;" > ADD TO CART </button>
				
	
			</div>
			</form>
			<div class="text-spinnger_row" style="padding-top: 12px">
	  					<span class="spinner-grow spinner-grow-sm text-danger" role="status" aria-hidden="true" ></span> In Stock
	  
						</div>
			
				
			<div class="button-buy-size d-grid gap-2 col-6 mx-auto " style="margin-top: 20px;height: 45px;width: auto;">
				<button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="border-color: black;">
					<span style="font-size: 20px">SIZE GUIDE</span>
	  					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"><path d="M18.342 0l-2.469 2.47 2.121 2.121-.707.707-2.121-2.121-1.414 1.414 1.414 1.414-.707.707-1.414-1.414-1.414 1.414 1.414 1.414-.707.707-1.414-1.414-1.414 1.414 2.121 2.122-.707.707-2.121-2.121-1.414 1.414 1.414 1.414-.708.707-1.414-1.414-1.414 1.414 1.414 1.414-.708.709-1.414-1.414-1.414 1.413 2.121 2.121-.706.706-2.122-2.121-2.438 2.439 5.656 5.657 18.344-18.343z"></path></svg>
	  
	</button>
	<!-- Modal -->
			<div  class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	 			 <div class="modal-dialog  modal-dialog-scrollable" style="padding-top: 88px">
	    			<div class="modal-content">
	      					<div class="modal-header">
	      						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	       					
	       					 </div>
	       					  <h5 class="text-center" style="font-size: 30px" id="staticBackdropLabel">SIZE GUIDE</h5>
	       					 <h5 class="text-center"  style="margin-top: 15px;font-size: 30px"> PETITE STRAPS</h5>
	      <div class="modal-body">
	        				<h6 style="margin-top: 30px;font-size: 20px">LEATHER STRAPS</h6>
	        	<table class="table " >
	  <tbody style="all:unset;display: revert">
	    <tr >
	      <td style="border-right: 1px solid #ddd;">STRAP WIDTH</td>
	      <td style="border-right: 1px solid #ddd;">10mm</td>
	      <td style="border-right: 1px solid #ddd;">12mm</td>
	      <td style="border-right: 1px solid #ddd;">14mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">WILL FIT PETITE WATCH</td>
	      <td style="border-right: 1px solid #ddd;">24mm</td>
	      <td style="border-right: 1px solid #ddd;">28mm</td>
	      <td style="border-right: 1px solid #ddd;">32mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MIN)</td>
	      <td style="border-right: 1px solid #ddd;">135mm</td>
	      <td style="border-right: 1px solid #ddd;">145mm</td>
	      <td style="border-right: 1px solid #ddd;">145mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MAX)</td>
	      <td style="border-right: 1px solid #ddd;">180mm</td>
	      <td style="border-right: 1px solid #ddd;">185mm</td>
	      <td style="border-right: 1px solid #ddd;">185mm</td>
	    </tr>
	  </tbody>
	</table>
	        	<h5 class=""></h5>
	        	<h6 style="font-size: 20px">NYLON STRAPS</h6>
	        		<table class="table ">
	  <tbody style="all:unset;display: revert">
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP WIDTH</td>
	      <td style="border-right: 1px solid #ddd;">10mm</td>
	      <td style="border-right: 1px solid #ddd;">12mm</td>
	      <td style="border-right: 1px solid #ddd;">14mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">WILL FIT PETITE WATCH</td>
	      
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MIN)</td>
	      <td style="border-right: 1px solid #ddd;">143mm</td>
	      <td style="border-right: 1px solid #ddd;">143mm</td>
	      <td style="border-right: 1px solid #ddd;">143mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MAX)</td>
	      <td style="border-right: 1px solid #ddd;">190mm</td>
	      <td style="border-right: 1px solid #ddd;">190mm</td>
	      <td style="border-right: 1px solid #ddd;">190mm</td>
	    </tr>
	  </tbody>
	</table>
				<h5 class=""></h5>
	        	<h6 style="font-size: 20px">MESH STRAPS</h6>
	        	<table class="table ">
	  <tbody style="all:unset;display: revert;">
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP WIDTH</td>
	      <td style="border-right: 1px solid #ddd;">10mm</td>
	      <td style="border-right: 1px solid #ddd;">12mm</td>
	      <td style="border-right: 1px solid #ddd;">14mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">WILL FIT PETITE WATCH</td>
	      <td style="border-right: 1px solid #ddd;">24mm</td>
	      <td style="border-right: 1px solid #ddd;">28mm</td>
	      <td style="border-right: 1px solid #ddd;">32mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MIN)</td>
	      <td style="border-right: 1px solid #ddd;">135mm</td>
	      <td style="border-right: 1px solid #ddd;">150mm</td>
	      <td style="border-right: 1px solid #ddd;">150mm</td>
	    </tr>
	    <tr>
	      <td style="border-right: 1px solid #ddd;">STRAP LENGTH (MAX)</td>
	      <td style="border-right: 1px solid #ddd;">190mm</td>
	      <td style="border-right: 1px solid #ddd;">205mm</td>
	      <td style="border-right: 1px solid #ddd;">205mm</td>
	    </tr>
	  </tbody>
	</table>
	      </div>
	      <div class="modal-footer">
	      <img src="/images/size_dh.png" class="logo-footer" alt="logo" style="width: 460px;height: 155px">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
	        
	      </div>
	    </div>
	    
	  </div>
	  
	</div>
			
			</div>
			<div class="text_pruduct" style="margin-top: 12px;font-size: 15px">
			<ul>
				<li>Free express shipping</li>
				<li>Free returns</li>
				<li>Two years warranty</li>
			</ul>
			<h6 style="margin-top: 20px;font-size: 15px">The elegant Petite St Mawes strap is made from genuine Italian leather.</h6>
				</div>
			<div class="accordion accordion-flush" id="accordionExample" style="margin-top: 20px;">
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="headingOne">
	      <button style="font-size: 15px" class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	        DETAILS
	      </button>
	    </h2>
	    <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	       <table class="table " style="border: none;">
	  <tr>
	      <td>SKU</td>
	     
	      <td style="text-align: right;">DW00200184</td>
	    </tr>
	    <tr>
	      <td>Color</td>
	      
	      <td style="text-align: right;">Rose Gold</td>
	    </tr>
	    <tr>
	      <td>Material</td>
	      
	      <td style="text-align: right;">Leather</td>
	    </tr>
	    <tr>
	      <td>Strap color</td>
	      
	      <td style="text-align: right;">Brown</td>
	    </tr>
	</table>
	       
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="headingTwo">
	      <button style="font-size: 15px" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	       SHOPPING INFO
	      </button>
	    </h2>
	    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	        <table class="table ">
	  <tbody>
	    <tr>
	      <td><img src="/images/icon_ex.png"  alt="logo" style="width: 85px;height: 75px">UPS EXPRESS SAVER</td>
	      <td style="text-align: right;">FREE</td>
	    </tr>
	  </tbody>
	</table>
	        <ul>
	        <li>2-3 working days</li>
	        </ul>
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="headingThree">
	      <button style="font-size: 15px" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	       RETURNS & EXCHANGES
	      </button>
	    </h2>
	    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	       <p>We offer free returns on all our products, except earrings which cannot be returned or exchanged unless faulty. With the exception of earrings, You have the right to return any/all products you have purchased directly from our website within 30 days of receiving the item.</p>
	       <p>In the event you would like to return your purchase, all items need to be returned if you ordered a gift set.</p>
	       <p>Please note that “Complimentary” items (or any free product received as part of a promotional offer) are not eligible to be exchanged and must be returned along with the other items in your order if you are returning your order for a refund. However, gift wrapping included in a purchase during a campaign does not have to be returned.</p>
	       <p>The campaign offer is based on the original purchase. In case of a return where you no longer fulfil the criteria for the campaign offer, the refunded or charged amount will be adjusted accordingly.</p>
	       <p>Kindly note that after the watch has been adjusted to fit your wrist, the warranty is still valid but you cannot return the watch.</p>
	       <p>Kindly note that items purchased online cannot be returned to a local retail store.</p>
	       <p>Read more in our <a href="#" title="Refund Policy">Returns policy</a></p>
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="headingFour">
	      <button style="font-size: 15px" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
	       PAYMENT OPTIONS
	      </button>
	    </h2>
	    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
	      <div class="accordion-body">
	       <img src="/images/pay.png" class="goverment-img">
	      </div>
	    </div>
	  </div>
	</div>
		<div class="COMPLEMENTARY ITEMS" style="font-size: 15px">
			<h6 style="margin-top: 15px;font-size: 15px">COMPLEMENTARY ITEMS</h6>
			<h6 style="margin-top: 30px;font-size: 15px">SIMILAR COLLECTION</h6>
			<ul class=" list-unstyled" role="list" style="gap:8px;display: flex;flex-wrap: wrap;">
				<li><a style="color: black;" href="#" >Accessories</a></li>
				<li><a style="color: black;" href="#" >Leather Straps</a></li>
				<li><a style="color: black;" href="#" >Petite Collection</a></li>
				<li><a style="color: black;" href="#" >Petite Straps Rose Gold</a></li>
				<li><a style="color: black;" href="#" >Petite Watch Straps</a></li>
				<li><a style="color: black;" href="#" >Watch Straps</a></li>
				
			</ul>
		</div>
			</div>
		</div>
	    </div>
	  </div>
	</div>
</div>

<!-- Product -->

			<div class="product-new show-scroll">
			
				<div class="product-new--header">
					<h3>SẢN PHẨM KHÁC</h3>
					<div class="product-new--control">
						 <button class="prev-btn">
						 	<i class="bi bi-chevron-left"></i>
						 </button>
						 <button class="next-btn">
						 	<i class="bi bi-chevron-right"></i>
						 </button>
					</div>
				</div>
				<div class="product-new--container container">
					 <div class="row slide-show">
					 	<c:forEach items="${products}" var="product">
		    				<div class="col-lg-3 col-md-4 col-sm-6 col-12 px-2"> 
		    					<div class="product">
									<a href="<c:url value="/product-details/${product.productid}"/>" class="product-item">
									    <img 
									    	alt="product-img" 
									    	src="${product.image}">
									    <span class="rose-gold">rose gold</span>
									    <div class="product-item-body">
									      	<h4>${product.productName}</h4>
									      	<span></span>
									      	<p>${product.getPriceFormat()} VNĐ</p>
									    </div>
									</a>
									
								</div>
		    				</div>
					 </c:forEach>
	  				</div>
				</div>
					
			</div>
		


	
	
<!-- newsletter-section -->
		<jsp:include page="newletter.jsp"></jsp:include>
		 
		<jsp:include page="footer.jsp"></jsp:include>

</div>
<script >
//hiển thị button
var buttonContents = {
		  bt1: "Size 12mm",
		  bt2: "Size 14mm",
		  bt3: "Size 16mm"
		};
var bt1 = document.getElementById("bt1");
var bt2 = document.getElementById("bt2");
var bt3 = document.getElementById("bt3");
var contentDiv = document.getElementById("content");

bt1.addEventListener("click", function() {
  contentDiv.innerHTML = buttonContents.bt1;
});

bt2.addEventListener("click", function() {
  contentDiv.innerHTML = buttonContents.bt2;
});

bt3.addEventListener("click", function() {
  contentDiv.innerHTML = buttonContents.bt3;
});


</script>
	<script>
		//Lấy ra danh sách các phần tử trong trang web mà muốn hiển thị sau khi scroll qua
		const elementsToShow = document.querySelectorAll(".show-scroll");
		console.log(elementsToShow)
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