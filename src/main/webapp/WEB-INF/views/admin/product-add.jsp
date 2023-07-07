<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="product-add">
	<div class="product-add--header">
		<h4>Thêm sản phẩm</h4> 
	</div>
						
	<form method="POST" action="/admin/products-add"  enctype="multipart/form-data">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<input type="text" id="productName" name="productName" class="product-edit-input" placeholder="Tên sản phẩm" value="${product.productName}" > 
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<input type="text" id="cate" name="cate" class="product-edit-input" placeholder="Danh mục sản phẩm" value="${product.category.cateName}" > 
				</div>
			</div>
			<div class="row">
				<div class="col-12"> 
					<div class="product-edit-form--section">
						<div class="product-edit-form--img">
							<img  alt="image" id="preview"  name="imageBase" src="${product.image}" >
							
						</div>
						<div class="form-group">
   							 <label for="image">Chọn ảnh:</label>
   							 <input type="file" name="image" id="image" class="form-control-file"  accept="image/*" onchange="loadImage()" >
  							</div>
							
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<textarea  rows="5" id="description" name="description" class="product-edit-input" cols="2" placeholder="Mô tả sản phẩm"  >${product.description}  </textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<input type="number" class="product-edit-input" id="price" name="price" placeholder="Giá sản phẩm" value="${product.price}00" >
				</div>
				<div class="col-6">
					<input type="number" class="product-edit-input" id="discount" name="discount" placeholder="Giá khuyến mãi"  value="${product.discount}" >
				</div>
			</div>
		</div>
		<button type="submit" class="btn btn-dark" style="width: 320px;height: 45px;font-size: 15px">Thêm</button>
	</form>
</div>
<script>
function loadImage() {
  var input = document.getElementById("image");
  var preview = document.getElementById("preview");
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      preview.src = e.target.result;
      
    }
    reader.readAsDataURL(input.files[0]);
  }
}
</script>


