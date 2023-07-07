<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<link href="/css/footer.css" rel="stylesheet" type="text/css" />
<link href="/css/product-item.css" rel="stylesheet" type="text/css" />

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
<!-- Slick Css -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<!-- Slick JS -->
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<title>Insert title here</title>

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
		
		<!-- Slider -->
		<div class="slider">
			<img class="slider-img" alt="slider-img" src="/images/slider.webp">	
			<div class="slider-body">
				<h1>SHOW YOUR TRUE COLORS</h1>
				<p>SPRING NEWS</p>
				<button>EXPLORE</button>
			</div>
		</div>
		
		<!-- Sub Slide -->
		<div class="sub-slide">
			<div class="sub-sliide--container">
				<div>
					<svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M1.375 3.125H13.75V15.5H1.375V3.125ZM0.25 15.5V2H14.875V6.5H19.9101L22.2748 11.2293L23.875 12.8295V15.5V16.0625V19.625H21.5687C21.3081 20.9088 20.1732 21.875 18.8125 21.875C17.4518 21.875 16.3168 20.9088 16.0563 19.625H8.06874C7.80815 20.9088 6.67316 21.875 5.3125 21.875C3.95184 21.875 2.81685 20.9088 2.55626 19.625H0.25V16.0625V15.5ZM2.55626 18.5C2.71891 17.6987 3.22222 17.0211 3.90843 16.625H1.375V18.5H2.55626ZM6.71657 16.625C7.40278 17.0211 7.90609 17.6987 8.06874 18.5H16.0563C16.2189 17.6987 16.7222 17.0211 17.4084 16.625H6.71657ZM20.2166 16.625C20.9028 17.0211 21.4061 17.6987 21.5687 18.5H22.75V16.625H20.2166ZM22.75 15.5V13.2955L21.4148 11.9602L21.3094 11.8141L19.2149 7.625H14.875V15.5H22.75ZM5.3125 17.375C4.38052 17.375 3.625 18.1305 3.625 19.0625C3.625 19.9945 4.38052 20.75 5.3125 20.75C6.24448 20.75 7 19.9945 7 19.0625C7 18.1305 6.24448 17.375 5.3125 17.375ZM17.125 19.0625C17.125 18.1305 17.8805 17.375 18.8125 17.375C19.7445 17.375 20.5 18.1305 20.5 19.0625C20.5 19.9945 19.7445 20.75 18.8125 20.75C17.8805 20.75 17.125 19.9945 17.125 19.0625Z" fill="#00081C"></path>
					</svg>
					<span>Miễn phí giao hàng</span>
				</div>
				<div>
					<svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M20.9715 8.44723L23.7449 5.06013L14.5871 0.25L11.9738 3.25441L9.38435 0.250419L0.258898 5.08553L3.0222 8.5365L0.25 11.8806L3.18524 13.5566V18.8764L11.9977 23.5149L20.8102 18.8764V13.5629L23.7211 11.881L20.9715 8.44723ZM19.0337 8.44276L11.9792 4.75052L4.95911 8.52939L11.9937 12.12L19.0337 8.44276ZM19.6852 14.2129L15.1519 16.8322L12.5602 14.1477V21.9475L19.6852 18.1972V14.2129ZM11.4352 14.1503L8.88042 16.8084L4.31024 14.199V18.1972L11.4352 21.9475V14.1503ZM20.1027 7.73249L12.8648 3.94426L14.8519 1.65981L22.0006 5.41467L20.1027 7.73249ZM3.89385 7.82518L1.98658 5.44328L9.11813 1.66464L11.0896 3.95174L3.89385 7.82518ZM12.9237 12.9044L20.098 9.15617L22.0244 11.562L15.3505 15.4181L12.9237 12.9044ZM3.89326 9.2485L1.97073 11.5677L8.67705 15.3969L11.0585 12.9154L3.89326 9.2485Z" fill="#00081C"></path>
					</svg>
					<span>Trả lại miễn phí</span>
				</div>
				<div>
					<svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M16.125 5.04583V0.25H6.75V5.04583C4.48878 6.55944 3 9.13711 3 12.0625C3 14.9879 4.48878 17.5656 6.75 19.0792V23.8593H16.125V19.0792C17.8363 17.9337 19.1051 16.1788 19.6211 14.125H20.4375L20.5468 14.1187C21.0131 14.0645 21.375 13.6683 21.375 13.1875V10.9375L21.3687 10.8282C21.3145 10.3619 20.9183 10 20.4375 10H19.6211C19.1051 7.94619 17.8363 6.19131 16.125 5.04583ZM15 4.41175V1.375H7.875V4.41175C8.9573 3.90693 10.1645 3.625 11.4375 3.625C12.7105 3.625 13.9177 3.90693 15 4.41175ZM19.8235 11.125C19.8575 11.4328 19.875 11.7456 19.875 12.0625C19.875 12.3794 19.8575 12.6922 19.8235 13H20.25V11.125H19.8235ZM15 19.7133C13.9177 20.2181 12.7105 20.5 11.4375 20.5C10.1645 20.5 8.9573 20.2181 7.875 19.7133V22.7343H15V19.7133ZM8.80912 9.76524L8.06588 10.6098L11.4779 13.6126L15.9622 9.08326L15.1628 8.29174L11.4248 12.0672L8.80912 9.76524ZM11.4375 4.75C7.39892 4.75 4.125 8.02392 4.125 12.0625C4.125 16.1011 7.39892 19.375 11.4375 19.375C15.4761 19.375 18.75 16.1011 18.75 12.0625C18.75 8.02392 15.4761 4.75 11.4375 4.75Z" fill="#00081C"></path>
					</svg>
					<span>Bảo hành 2 năm</span>
				</div>
			</div>
		</div>
		
		<!-- Shop -->
		<div class="shopify show-scroll">
			<img alt="shopify-img" src="/images/shopify.webp">
			<div class="shopify-body">
				<h5>Miễn phí thiết kế bao bì bao gồm trong mọi đơn hàng</h5>
				<button>Mua sắm quà tặng</button>
			</div>
		</div>
	
		<!-- New Product -->
		<div class="product-new show-scroll">
			<div class="product-new--header">
				<h3>Sản phẩm mới</h3>
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
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
    				<div class="col-3"> 
    					<jsp:include page="product-item.jsp"></jsp:include>
    				</div>
  				</div>
			</div>
		</div>
		
		<!-- Look for her - him -->
		<div class="look-for show-scroll">
			<div class="container" style="padding: 0 16px">
  				<div class="row">
    				<div class="col-6">
	    				<a href="#" class="look-for--item">
		      				<img 
		      					alt="look for her" 
		      					src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/collection_elan_hero_1000x1000-ugc.jpg?v=1677829786"
		      				>
		      				<button>Sản phẩm nữ</button>
	    				</a>
    				</div>
    				<div class="col-6">
    					<a href="#" class="look-for--item">
	      					<img 
	      						alt="look for her" 
	      						src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/itsjustinesjournal_2_72c08b82-70d0-490b-b7ff-f4128b857e97.jpg?v=1679490388"
	      					>
	      					<button>Sản phẩm nam</button>
    					</a>
    				</div>
  				</div>
			</div>
		</div>

		
		<!-- DANIELWELLINGTON -->
		<div class="daniel-well show-scroll">
			<h2>#DANIELWELLINGTON</h2>
			<p>Lấy cảm hứng từ cộng đồng của chúng tôi</p>
			<div class="container" style="padding: 0">
  				<div class="row">
    				<div class="col-3">
      					<a href="#" class="daniel-item">
      						<img alt="daniel-img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/Mutyamasayu.jpg?v=1676971092">
      					</a> 
    				</div>
    				<div class="col-3">
      					<a href="#" class="daniel-item">
      						<img alt="daniel-img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/tostos_c1b661f6-f53b-43c3-90f7-5236204d282d.jpg?v=1679490521">
      					</a> 
    				</div>
    				<div class="col-3">
      					<a href="#" class="daniel-item">
      						<img alt="daniel-img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/theiboblondie_bf4c2dc7-6fb6-491f-9920-85305a8eab0c.jpg?v=1679490560">
      					</a> 
    				</div>
    				<div class="col-3">
      					<a href="#" class="daniel-item">
      						<img alt="daniel-img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/files/taca.o3o.jpg?v=1679490600">
      					</a> 
    				</div>
  				</div>
			</div>
		</div>
	
		
		<!-- inner -->
		<div class="inner show-scroll">
			<div class="inner-container">
				<h2>ĐỒNG HỒ VÀ TRANG SỨC DANIEL WELLINGTON</h2>
				<p>Khám phá bộ sưu tập đồng hồ nữ và đồng hồ nam của chúng tôi để tìm ra chiếc đồng hồ hoàn hảo cho bạn.</p>
				<p>
					Với đồng hồ của Daniel Wellington, luôn có một chiếc đồng hồ dành cho ai đó, chứa đầy đủ các loại từ đồng hồ nữ, đồng hồ nam cho đến đồng hồ nhỏ, đồng hồ tự động, đồng hồ vàng, đồng hồ bạc hay đồng hồ vàng hồng. 
					Bất kể sở thích và nhu cầu, chúng tôi có đồng hồ dành cho bạn, từ đồng hồ phong cách cổ điển bằng thép đến đồng hồ dây da hoặc đồng hồ mặt vuông. 
					Tất cả những chiếc đồng hồ này được cung cấp với nhiều màu sắc và kiểu dáng khác nhau.
				</p>
				<p>
					Rất ít thứ hấp dẫn bằng một chiếc đồng hồ thời trang với thiết kế độc quyền trên cổ tay. 
					Ngày nay, đồng hồ đeo tay không chỉ đơn thuần là một thứ để xem thời gian. 
					Đồng hồ là một phụ kiện, một phần tạo nên vẻ ngoài, phong cách và trang phục của bạn. 
					Đồng hồ bây giờ là một phụ kiện thời trang gắn kết với nhau và làm nổi bật toàn bộ diện mạo, một thứ đại diện cho bạn. 
					Một chiếc đồng hồ thanh lịch và vượt thời gian có thể được coi là một khoản đầu tư và nên có mặt với tất cả mọi người, cả nam và nữ. 
					Nếu bạn chọn một chiếc đồng hồ cổ điển, bạn có thể sử dụng nó cho vẻ ngoài sành điệu hoặc những ngày công sở. 
					Hoặc một cái nhìn giản dị hơn với đồng hồ bạc hoặc đồng hồ vàng với các màu mặt số khác nhau.
				</p>
				<p>
					Tại Daniel Wellington, bạn có thể mua đồng hồ trực tuyến và tại cửa hàng. 
					Chọn từ rất nhiều loại đồng hồ thời trang để trang trí cho cổ tay của bạn. 
					Chúng tôi cũng có dây đeo đồng hồ bằng nhiều chất liệu khác nhau như da, thép, lưới và vải NATO. 
					Phạm vi đồng hồ của chúng tôi bao gồm một số loại đồng hồ đeo tay khác nhau, đồng hồ gốm, đồng hồ tự động và đồng hồ hoạt động. 
					Trong số những chiếc đồng hồ của Daniel Wellington, bạn cũng sẽ tìm thấy những chiếc đồng hồ có nhiều kích cỡ khác nhau cho cả nam và nữ, những chiếc đồng hồ có mặt số khác biệt và độc đáo. 
					Cho dù bạn thích phong cách nào, chúng tôi đều có đồng hồ trực tuyến và tại cửa hàng dành cho bạn!
				</p>
				<p>
					Đồng hồ nữ và đồng hồ nam sành điệu đều thiết thực, trang nhã và là thứ có thể tạo nên vẻ ngoài hoàn chỉnh. 
					Trong quá khứ, đồng hồ độc quyền đã được kết nối nhiều hơn với địa vị, ngày càng rõ ràng rằng đồng hồ cũng là một phụ kiện cho một bức tranh lớn hơn, tất cả các bạn. 
					Daniel Wellington cung cấp nhiều phụ kiện khác nhau bổ sung cho nhau. Những đồ trang sức như vòng tay và nhẫn bằng bạc hoặc vàng hoàn toàn phù hợp với đồng hồ của chúng tôi, những chiếc đồng hồ thiết thực và vượt thời gian để giữ được lâu. 
					Với thời gian vượt thời gian, đồng hồ dành cho phụ nữ và nam giới chưa bao giờ cảm thấy phù hợp và hợp thời trang hơn ngày nay. 
					Trong cuộc sống hàng ngày, đồng hồ thời trang trong thiết kế cổ điển cảm thấy phù hợp.
				</p>
				<p>
					Dây đồng hồ bằng da, lưới hoặc thép màu bạc và vàng luôn phù hợp. Đồng hồ màu trắng, đồng hồ màu đen, đồng hồ hoàn toàn bằng màu trắng hoặc hoàn toàn bằng màu đen làm cho bạn trông phong cách và mạnh mẽ. 
					Hoặc những chiếc đồng hồ được trang trí và kín đáo hơn, là mẫu mực cho các bữa tiệc, những dịp quan trọng hơn hoặc khi bạn thực sự muốn tạo điểm nhấn với trang phục của mình. 
					Bất kể phong cách cá nhân của bạn là gì, đồng hồ nữ hay đồng hồ nam hợp thời trang luôn mang lại ấn tượng phong cách và lôi cuốn, điều này càng được nâng cao bằng cách kết hợp đồng hồ của bạn với các phụ kiện khác như đồ trang sức. 
					Tại Daniel Wellington, chúng tôi đã lựa chọn cẩn thận những chiếc đồng hồ của mình, với thiết kế độc đáo, cả về kiểu dáng và chức năng. 
					Tìm kiếm trên trang web của chúng tôi hoặc trong một cửa hàng gần bạn để tìm chiếc đồng hồ yêu thích tiếp theo của bạn.
				</p>
			</div>
		</div>
		
		
		<!-- newsletter-section -->
		<jsp:include page="newletter.jsp"></jsp:include>
		 
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

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








