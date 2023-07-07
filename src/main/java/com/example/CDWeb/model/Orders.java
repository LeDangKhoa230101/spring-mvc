package com.example.CDWeb.model;

import java.util.Date;
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
@Table(name="Orders")
public class Orders {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="orderid")
	private int orderid;
	
	@Column(name="purchase_date", nullable = false) 
	private Date purchaseDate;
	
	@Column(name="delivery_address", nullable = false)
	private String deliveryAddress;
	
	@Column(name="order_status", nullable = false)
	private String orderStatus;
	
	@Column(name="tongtien", nullable = false)
	private String tongtien;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="userid", nullable = false)
	private User user;
	
	@OneToMany(mappedBy="orderid")
	private List<OrdersDetail> ordersDetails;
	
	
	public Orders() {
		super();
	}

	public Orders(int orderid, Date purchaseDate, String deliveryAddress, String orderStatus, String tongtien,
			User user, List<OrdersDetail> ordersDetails) {
		super();
		this.orderid = orderid;
		this.purchaseDate = purchaseDate;
		this.deliveryAddress = deliveryAddress;
		this.orderStatus = orderStatus;
		this.tongtien = tongtien;
		this.user = user;
		this.ordersDetails = ordersDetails;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public Date getPurchaseDate() {
		return purchaseDate;
	}

	public void setPurchaseDate(Date date) {
		this.purchaseDate = date;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public List<OrdersDetail> getOrdersDetails() {
		return ordersDetails;
	}

	public void setOrdersDetails(List<OrdersDetail> ordersDetails) {
		this.ordersDetails = ordersDetails;
	}
	
	public String getTongtien() {
		return tongtien;
	}

	public void setTongtien(String string) {
		this.tongtien = string;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

//	public String getTotalFormat() {
//		String formattedNumber = String.format("%.3f", getTongtien()).replace(".", ",");
//		
//		return formattedNumber;
//	}
	
}








