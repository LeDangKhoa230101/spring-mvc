<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<link href="/css/category.css" rel="stylesheet" type="text/css" />
<link href="/css/product-item.css" rel="stylesheet" type="text/css" />
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
<title>Danh Mục Sản Phẩm</title>

<script type="text/javascript">
	$(document).ready(function() {
		// toggle class wishlist btn
		$(".product-item--wishlist").click(function() {
			$(this).toggleClass('active')
		})
	})
</script>

</head>
<body>
	<div id="category">
		<jsp:include page="header.jsp"></jsp:include>
		
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
		
		<h1 class="heading">${category.cateName}</h1>
		
		<!-- Filter -->
		<div class="filter">
			<div class="filter-right"> 		
				<select id="sort-by" name="sortBy">
					<option value="default">Mặc định</option>
					<option value="priceAsc">Giá từ thấp đến cao</option>
					<option value="priceDesc">Giá từ cao đến thấp</option>
					<option value="nameAsc">Theo thứ tự bảng chữ cái, A->Z</option>
					<option value="nameDesc">Theo thứ tự bảng chữ cái, Z->A</option>
				</select> 
				<i class="bi bi-filter"></i>
			</div>
		</div> 
		
		<!-- Product List -->
		<div class="container cate-product-list product-container">
  			<div class="row  " id="product-list-sort">
  				<c:forEach items="${products}" var="product">
	    			<div class="col-lg-3 col-md-4 col-sm-6 col-12 px-1 py-2 sort-by   ">
	      				<div class="product-item ">
							<a href="<c:url value="/product-details/${product.productid}"/>" class="product-item">
							    <img 
							    	alt="product-img" 
							    	src="${product.image}"
							    >
							    <span class="rose-gold">rose gold</span>
							    <div class="product-item-body  product-title">
							      	<h4>${product.productName}</h4>
							      	<span></span>
							      	<p>${product.getPriceFormat()} VNĐ</p>
							    </div>
							</a>
							<button class="product-item--wishlist"></button>
						</div>  
	    			</div>
  				</c:forEach>
  			</div>
		</div>
		
		<!-- inner -->
		<div class="inner show-scroll">
			<p>
				Kính râm là thứ không thể thiếu khi nói đến phụ kiện. 
				Chúng có thể là phụ kiện quan trọng nhất mà bạn có thể đeo – mỗi khung hình đều là biểu tượng của một thời đại nhất định, nhưng cũng đồng thời vượt thời gian. 
				Họ nắm giữ quyền nói chúng ta là ai, chúng ta thích gì và điều gì khiến chúng ta đánh dấu. Việc tìm kiếm hình dạng chữ ký của bạn cần một số thử nghiệm và sai sót, nhưng nó rất đáng để thử. 
				Một cặp kính râm phù hợp là tuyên bố cuối cùng, chúng có khả năng tác động đến ấn tượng đầu tiên, nâng tầm trang phục của bạn và góp phần tạo nên sự rung cảm tổng thể của bạn. 
				Bộ sưu tập kính mắt mới của Daniel Wellington có kính râm dành cho nam và nữ. 
				Với nhiều kích cỡ, hình dạng và màu sắc, bạn đã đến đúng nơi để mua những chiếc kính râm tốt nhất. 
				KÍNH MÁT NAM Việc tìm kiếm một cặp kính mát nam hoàn hảo chưa bao giờ dễ dàng hơn thế. 
				Có rất nhiều thông tin về kính râm thời trang nam và những điều cần tìm khi mua kính râm mới, để có được chiếc kính phù hợp nhất với hình dáng và vẻ ngoài của bạn. 
				Khi bạn mua kính râm nam với chúng tôi, bạn không chỉ nhìn thấy bộ sưu tập kính râm hợp thời trang dành cho nam giới của chúng tôi mà còn là sản phẩm thời trang kính râm thiết kế mới nhất. 
				Bộ sưu tập kính râm dành cho nam giới của chúng tôi đã được lựa chọn để cung cấp kính mắt phản ánh phong cách cá nhân, kích thước và hình dạng khuôn mặt cũng như sự an toàn cho mắt. 
				Khi bạn mua kính râm nam trực tuyến tại Daniel Wellington, bạn sẽ nhận được chính xác những gì bạn mong đợi từ thiết kế DW, kính râm hợp thời trang, thời trang và sành điệu dành cho nam giới với điểm nhấn đặc biệt đó. 
				KÍNH MÁT NỮ Nếu bạn đang tìm kiếm những chiếc kính râm dành cho nữ có thiết kế hợp thời trang, thì bạn đã đến đúng nơi. 
				Chúng tôi muốn bạn cảm thấy tự tin khi mua một đôi giày nữ mới' s kính râm tại DW. 
				Chúng tôi cung cấp nhiều loại kính râm thời trang dành cho nữ tại Daniel Wellington. 
				Kính mắt nữ với nhiều kiểu dáng và màu sắc khác nhau. 
				Khi bạn mua kính râm nữ trực tuyến, có một số điều cần xem xét. 
				Bạn muốn có hình dạng, màu sắc và kiểu dáng nào cho kính râm nữ mới của mình và loại nào phù hợp với phong cách của bạn? 
				Kính râm dành cho nữ của Daniel Wellington có thứ dành cho tất cả mọi người; kính râm tròn, vuông, quá khổ, mắt mèo, hình chữ nhật, v.v. 
				Kính râm hợp thời trang, thanh lịch, dễ thương, sang trọng, mát mẻ và sắc sảo được tạo ra cho mọi dịp. 
				Hãy mặc chúng khi đi biển, đi dạo hoặc thậm chí đi chơi đêm tùy thuộc vào phong cách của bạn. 
				Chọn kính râm nữ yêu thích của bạn từ bộ sưu tập của chúng tôi, chúng tôi cung cấp thép không gỉ và axetat, với nhiều màu gọng và mắt kính như đen, nâu và đồi mồi. 
				KÍNH MÁT DANIEL WELLINGTON Khám phá trực tuyến các loại kính râm của Daniel Wellington ngay hôm nay. 
				Hãy bổ sung mảnh ghép còn thiếu cho diện mạo của bạn và sẵn sàng gây ấn tượng với chiếc kính râm bắt mắt mới của bạn. 
				Hãy theo dõi tất cả các lần ra mắt sắp tới của chúng tôi; bạn không bao giờ biết những gì xung quanh góc!
			</p>
		</div>
		
		<!-- newletter -->
		<jsp:include page="newletter.jsp"></jsp:include> 
		
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

<script>
	//Lấy ra danh sách các phần tử trong trang web mà muốn hiển thị sau khi scroll qua
	const elementsToShows = document.querySelectorAll(".show-scroll");
	// Lắng nghe sự kiện scroll trên trang web
	window.addEventListener('scroll', function() {
  		// Lấy vị trí hiện tại của scroll
  		const currentScrollPos = window.pageYOffset;
  		// Duyệt qua danh sách các phần tử muốn hiển thị
  		elementsToShows.forEach(function(element) {
    		// Nếu vị trí của scrollY vượt qua vị trí offsetTop của phần tử đó
    		if (currentScrollPos > element.offsetTop - 500) {
      			// Thêm lớp hiện ra vào phần tử đó để hiển thị nó
      			element.classList.add("show");
    		}
  		});
	});
	
	
	// Sort By Product In Category page
	$(document).ready(function() {
		$("#sort-by").change(function() {
			var sortOption = $(this).children("option:selected").val();
			var cateid = ${cateid};
			
			$.get('/list/category/' + cateid, { sortOption: sortOption }, function(data) {
				$("#product-list-sort").empty();
				
				$.each(data, function(index, product) {
					$("#product-list-sort").append(
							"<div class='col-lg-3 col-md-4 col-sm-6 col-12 px-1 py-2 sort-by'>" +
			      				"<div class='product'>" +
									"<a href='#' class='product-item'>" +
									    "<img alt='product-img' src=" + product.image + ">" +
									    "<span class='rose-gold'>rose gold</span>" +
									    "<div class='product-item-body'>" +
									      	"<h4>" + product.productName + "</h4>" +
									      	"<span></span>" +
									      	"<p>" + product.priceFormat + " VNĐ</p>" +
									    "</div>" +
									"</a>" +
									"<button class='product-item--wishlist'></button>" +
								"</div>" + 
			    			"</div>");
				})
			})
		})
	})
	
</script>
	
</body>
</html>
