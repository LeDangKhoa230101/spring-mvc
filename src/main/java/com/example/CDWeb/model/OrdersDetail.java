package com.example.CDWeb.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ordersDetail")
public class OrdersDetail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ordersDetailId;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="orderid", nullable = false)
	private Orders orderid;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="productid", nullable = false)
	private Product product;
	
	@Column(name="quantity", nullable = false) 
	private int quantity;
	
	@Column(name="payment_method", nullable = false)
	private String paymentMethod;
	
	public OrdersDetail() {
		super();
	}

	public OrdersDetail(int ordersDetailId, Orders orderid, Product product, int quantity,
			String paymentMethod) {
		super();
		this.ordersDetailId = ordersDetailId;
		this.orderid = orderid;
		this.product = product;
		this.quantity = quantity;
		this.paymentMethod = paymentMethod;
	}

	public int getOrdersDetailId() {
		return ordersDetailId;
	}

	public void setOrdersDetailId(int ordersDetailId) {
		this.ordersDetailId = ordersDetailId;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Orders getOrderid() {
		return orderid;
	}

	public void setOrderid(Orders orderid) {
		this.orderid = orderid;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
}




