<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(document).ready(function() {
		$.ajax({
			url: "/order-user",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var orderAll = $("#order-all");
				
				var row = "<table class='order-table'>" +
								"<thead>" +
								"<tr>" +
									"<th>ID</th>" +
									"<th>Trạng thái</th>" +
									"<th>Ngày mua</th>" +
									"<th>Tổng tiền</th>" +
								"</tr>" +
							"</thead>" +
							"<tbody id='list-order'>" +
								
							"</tbody>" +
						"</table>";
		
				orderAll.append(row);
				var listOrder = $("#list-order");
				
				if(data.length > 0) {
					$.each(data, function(index, order) {
						listOrder.append(
								"<tr class='order-table-item'>" +
									"<td>" + order.orderid + "</td>" +
		                			"<td>" + order.orderStatus + "</td>" +
		                			"<td>" + order.purchaseDate + "</td>" +
									"<td>" + order.tongtien + " VNĐ</td>" +
							"</tr>");
					})
				} else {
					orderAll.empty();
					orderAll.append(
				            "<span class='order-empty'>" + "Không có đơn hàng" + "</span>"
				        );
				}
			}
		});
		
		// order wait
		$.ajax({
			url: "/order-user-wait",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var orderWait = $("#order-wait");
				
				var rowWait = "<table class='order-table'>" +
								"<thead>" +
								"<tr>" +
									"<th>ID</th>" +
									"<th>Trạng thái</th>" +
									"<th>Ngày mua</th>" +
									"<th>Tổng tiền</th>" +
								"</tr>" +
							"</thead>" +
							"<tbody id='list-order-wait'>" +
								
							"</tbody>" +
						"</table>";
		
				orderWait.append(rowWait);
				var listWait = $("#list-order-wait");
				
				if(data.length > 0) {
					$.each(data, function(index, order) {
				    	listWait.append(
				            "<tr class='order-table-item'>" +
				                "<td>" + order.orderid + "</td>" +
				                "<td>" + order.orderStatus + "</td>" +
				                "<td>" + order.purchaseDate + "</td>" +
				                "<td>" + order.tongtien + " VNĐ</td>" +
				            "</tr>");
					});
				} else {
			        orderWait.empty();
			        orderWait.append(
			            "<span class='order-empty'>" + "Không có đơn hàng" + "</span>"
			        );
			    }
			}
		})
		
		// order Tranport
		$.ajax({
			url: "/order-user-transport",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var orderTranport = $("#order-tranport");
				
				var rowTranport = "<table class='order-table'>" +
								"<thead>" +
								"<tr>" +
									"<th>ID</th>" +
									"<th>Trạng thái</th>" +
									"<th>Ngày mua</th>" +
									"<th>Tổng tiền</th>" +
								"</tr>" +
							"</thead>" +
							"<tbody id='list-order-tranport'>" +
								
							"</tbody>" +
						"</table>";
		
				orderTranport.append(rowTranport);
				var listTranport = $("#list-order-tranport");
				
				if(data.length > 0) {
					$.each(data, function(index, order) {
				    	listTranport.append(
				            "<tr class='order-table-item'>" +
				                "<td>" + order.orderid + "</td>" +
				                "<td>" + order.orderStatus + "</td>" +
				                "<td>" + order.purchaseDate + "</td>" +
				                "<td>" + order.tongtien + " VNĐ</td>" +
				            "</tr>");
					});
				} else {
			    	orderTranport.empty();
			    	orderTranport.append(
			            "<span class='order-empty'>" + "Không có đơn hàng" + "</span>"
			        );
			    }
			}
		})
		
		// order Delivering
		$.ajax({
			url: "/order-user-delivering",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var orderDelivering = $("#order-delivering");
				
				var rowDelivering = "<table class='order-table'>" +
								"<thead>" +
								"<tr>" +
									"<th>ID</th>" +
									"<th>Trạng thái</th>" +
									"<th>Ngày mua</th>" +
									"<th>Tổng tiền</th>" +
								"</tr>" +
							"</thead>" +
							"<tbody id='list-order-delivering'>" +
								
							"</tbody>" +
						"</table>";
		
				orderDelivering.append(rowDelivering);
				var listDelivering = $("#list-order-delivering");
				
				if(data.length > 0) {
					$.each(data, function(index, order) {
				    	listDelivering.append(
				            "<tr class='order-table-item'>" +
				                "<td>" + order.orderid + "</td>" +
				                "<td>" + order.orderStatus + "</td>" +
				                "<td>" + order.purchaseDate + "</td>" +
				                "<td>" + order.tongtien + " VNĐ</td>" +
				            "</tr>");
					});
				} else {
			    	orderDelivering.empty();
			    	orderDelivering.append(
			            "<span class='order-empty'>" + "Không có đơn hàng" + "</span>"
			        );
			    }
			}
		})
		
		
		// order Complete
		$.ajax({
			url: "/order-user-complete",
			type: "GET",
			dataType: "json",
			success: function(data) {
				var orderComplete = $("#order-complete");
				
				var rowComplete = "<table class='order-table'>" +
								"<thead>" +
								"<tr>" +
									"<th>ID</th>" +
									"<th>Trạng thái</th>" +
									"<th>Ngày mua</th>" +
									"<th>Tổng tiền</th>" +
								"</tr>" +
							"</thead>" +
							"<tbody id='list-order-complete'>" +
								
							"</tbody>" +
						"</table>";
		
				orderComplete.append(rowComplete);
				var listComplete = $("#list-order-complete");
				
				if(data.length > 0) {
					$.each(data, function(index, order) {
				    	listComplete.append(
				            "<tr class='order-table-item'>" +
				                "<td>" + order.orderid + "</td>" +
				                "<td>" + order.orderStatus + "</td>" +
				                "<td>" + order.purchaseDate + "</td>" +
				                "<td>" + order.tongtien + " VNĐ</td>" +
				            "</tr>");
				   
					});
				}  else {
			    	orderComplete.empty();
			    	orderComplete.append(
			            "<span class='order-empty'>" + "Không có đơn hàng" + "</span>"
			        );
			    }
			}
		})
	})	

</script>

<div class="order-container">
	<h2>Đơn hàng của tôi</h2>
	<div class="order-list">
		<div class="order-item active">Tất cả</div>
		<div class="order-item">Chờ Thanh toán</div>
		<div class="order-item">Vận chuyển</div>
		<div class="order-item">Đang giao</div>
		<div class="order-item">Hoàn thành</div>
		<div class="line"></div>
	</div>
	<div class="order-pane">
		<div class="order-pane-tab active" id="order-all"></div>
		
		<div class="order-pane-tab" id="order-wait"></div>
		
		<div class="order-pane-tab" id="order-tranport"></div>
		
		<div class="order-pane-tab" id="order-delivering"></div>
		
		<div class="order-pane-tab" id="order-complete"></div>
	</div>
</div>

<script>
	//order tab ui
	const orderTabs = document.querySelectorAll('.order-item');
	const orderPanes = document.querySelectorAll('.order-pane-tab');

	const activeLine = document.querySelector('.order-item.active');
	const line = document.querySelector('.order-list .line');

	line.style.left = activeLine.offsetLeft + 'px';
	line.style.width = activeLine.offsetWidth + 'px';

	orderTabs.forEach((tab, index) => {
		const orderPane = orderPanes[index];
	 
		tab.onclick = function() {
			$('.order-item.active').removeClass('active');
			$('.order-pane-tab.active').removeClass('active');
		
			line.style.left = this.offsetLeft + 'px';
        	line.style.width = this.offsetWidth + 'px';
		
			this.classList.add('active');
			orderPane.classList.add('active');
		}
	})
</script>


