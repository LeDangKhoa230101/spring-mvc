<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
<div class="product-manage">
	<a href="/admin/products-add" class="add-product-btn">
		<i class="bi bi-plus"></i>
		Thêm sản phẩm
	</a> 
	<table class="product-table">
		<thead> 
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Image</th>
				<th>Price</th>
				<th>Description</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${products}" var="product">
				<tr>
					<td>${product.productid}</td>
					<td>${product.productName}</td>
					<td>
					<c:set var="imagePath" value="${product.image}" />
					<c:set var="imageDirectory" value="0.png" />
						<img src="${imagePath}" alt="Product 1" />
						
					</td>
					<td>${product.getPriceFormat()} VNĐ</td>
					<td>${product.description}</td>
					<td>
						<a href="/admin/products-edit/${product.productid}" class="table-btn table-btn-edit">Sữa</a>
					</td>
					<td>
						<button type="button" class="table-btn table-btn-close" data-toggle="modal" data-target="#deleteModal${product.productid}">
							 Xóa
						</button>
						<!-- Modal Delete -->
						<div class="modal fade" id="deleteModal${product.productid}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Xóa sản phẩm</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div> 
						      <div class="modal-body" style="font-size: 1.6rem; margin: 20px 0;">
						        Bạn có chắc chắn muốn xóa sản phẩm này?
						      </div> 
						      <div class="modal-footer">
						        <form action="/admin/products" method="POST">
						        	<input type="hidden" name="productid" value="${product.productid}">  
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