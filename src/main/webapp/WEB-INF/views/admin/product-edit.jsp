<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="product-edit">
	<div class="product-edit--header">
		<h4>Sửa sản phẩm</h4> 
	</div>
	<form method="POST" action="/admin/products-edit/${product.productid}">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<input type="text" name="productName" value="${product.productName}" class="product-edit-input" placeholder="Tên sản phẩm"> 
				</div>
			</div>
			<div class="row">
				<div class="col-12"> 
					<div class="product-edit-form--section">
						<div class="product-edit-form--img">
							<img alt="image" id="avatar" src="${product.image}">
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<textarea rows="5" name="description" class="product-edit-input" cols="2" placeholder="Mô tả sản phẩm">${product.description}</textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<input type="number" name="price" value="${product.price}00" class="product-edit-input" placeholder="Giá sản phẩm">
				</div>
				<div class="col-6">
					<input type="number" name="discount" value="${product.discount}" class="product-edit-input" placeholder="Giá khuyến mãi">
				</div>
			</div>
		</div> 
		<input type="submit" value="Cập nhật" class="product-edit-form--submit-btn">
	</form>
</div>
					
					
					
					
					