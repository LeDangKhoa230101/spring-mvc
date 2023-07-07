<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<div class="order-manage">
	<h4>Danh sách hóa đơn</h4> 
	<table class="order-table">
		<thead> 
			<tr>
				<th>ID</th>
				<th>Số lượng</th>
				<th>Ngày mua</th>
				<th>Địa chỉ giao hàng</th>
				<th>Tổng tiền</th>
				<th>Trạng thái</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${orders}" var="order">
				<tr>
					<td>${order.orderid}</td>
					<td>3</td>
					<td>${order.purchaseDate}</td>
					<td>${order.deliveryAddress}</td>
					<td>${order.tongtien} VNĐ</td>
					<td>${order.orderStatus}</td>
					<td>
						<a href="/admin/orders/${order.orderid}" class="table-btn table-btn-eye">Xem</a>
					</td>
					<td>
						<button type="button" class="table-btn table-order-btn-close" data-toggle="modal" data-target="#deleteModal${order.orderid}">
							 Xóa
						</button>
						<!-- Modal Delete -->
						<div class="modal fade" id="deleteModal${order.orderid}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Xóa hóa đơn</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div> 
						      <div class="modal-body" style="font-size: 1.6rem; margin: 20px 0;">
						        Bạn có chắc chắn muốn xóa hóa đơn này?
						      </div> 
						      <div class="modal-footer">
						        <form action="/admin/orders" method="POST">
						        	<input type="hidden" name=orderid value="${order.orderid}">  
							        <button type="submit" class="btn btn-primary" style="font-size: 1.4rem;">Xóa</button>
						        	<button type="button" class="btn btn-secondary" data-dismiss="modal" style="font-size: 1.4rem;">Quay lại</button>
						        </form>
						      </div>
						    </div>
						  </div>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
												
	<div>
	    <c:if test="${currentPage > 0}">
	      <a class="prev-btn" href="?page=${currentPage - 1}">Previous</a>
	    </c:if>
	    <c:if test="${currentPage < totalPages - 1}">
	      <a class="next-btn" href="?page=${currentPage + 1}">Next</a>
	    </c:if>
  	</div>
</div>	

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
