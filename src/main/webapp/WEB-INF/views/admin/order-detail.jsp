<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="order-detail">
	<div class="order-detail--header">
		<h4>Chi tiết hóa đơn</h4> 
	</div>
												
	<div class="container">
		<div class="row">
			<div class="col-12 order-detail--col-1">
				<span>ID hóa đơn: ${order.orderid}</span>
				<span>Ngày mua: ${order.purchaseDate}</span>
				<span>Trạng thái: ${order.orderStatus}</span>
			</div>
		</div>
		<div class="row">
			<div class="col-12"> 
				<ul class="order-detail-list">
					<li>
						<div class="order-detail-body">
							<img alt="prod-image" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mwdyzzepnza4hqeubzwu.png?v=1680023628&width=768">
							<div>
								<span>Đồng hồ nam</span>
								<span>238238VNĐ x 4</span>
							</div>
						</div>
						<span>Danh mục: Đồng hồ nam</span>
						<span>Loại: Đồng hồ</span>
					</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<textarea class="product-edit-input" rows="5" cols="2" placeholder="Địa chỉ giao hàng">${order.deliveryAddress}</textarea>
			</div>
			<div class="col-6">
				<div class="order-detail-total">
					<span style="font-weight: 500">Tổng tiền:</span>	
					<span>${order.tongtien} VNĐ</span>											
				</div>
			</div>
		</div>
	</div>
</div>
		
		
		
		
		
		