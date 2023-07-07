package com.example.CDWeb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productid;

	@Column(name = "product_name", nullable = false)
	private String productName;

	@Column(name = "[image]", nullable = false)
	private String image;

	@Column(name = "price", nullable = false)
	private double price;

	@Column(name = "description", nullable = false)
	private String description;

	@Column(name = "discount", nullable = false)
	private int discount;

	// (fetch = FetchType.LAZY)
	// chỉ định cách thức lấy dữ liệu
	// LAZY, nó sẽ chỉ load dữ liệu của trường category khi ta truy cập đến nó
	// EAGER thì nó sẽ tự động load dữ liệu của trường category khi truy vấn Product
	// @JoinColumn: chỉ tên của trường khóa ngoại
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cateid", nullable = false)
	private Category category;

	@OneToMany(mappedBy = "product")
	private List<OrdersDetail> ordersDetails;

	public Product() {
		super();
	}

	public Product(int productid, String productName, String image, double price, String description, int discount,
			Category category) {
		super();
		this.productid = productid;
		this.productName = productName;
		this.image = image;
		this.price = price;
		this.description = description;
		this.discount = discount;
		this.category = category;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<OrdersDetail> getOrdersDetails() {
		return ordersDetails;
	}

	public void setOrdersDetails(List<OrdersDetail> ordersDetails) {
		this.ordersDetails = ordersDetails;
	}

	public String getPriceFormat() {
		String formattedNumber = String.format("%.3f", getPrice()).replace(".", ",");

		return formattedNumber;
	}

}
