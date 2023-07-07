package com.example.CDWeb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cateid;
	
	@Column(name="cate_name")
	private String cateName;
	
	// mappedBy = "category" chỉ định tên trường bên phía 
	// @ManyToOne của @Entity Product
	@OneToMany(mappedBy = "category")
	private List<Product> products;
	 
	
	public Category() {
		super();
	}

	public Category(int cateid, String cateName) {
		super();
		this.cateid = cateid;
		this.cateName = cateName;
	}

	public int getCateid() {
		return cateid;
	}

	public void setCateid(int cateid) {
		this.cateid = cateid;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	
	
}