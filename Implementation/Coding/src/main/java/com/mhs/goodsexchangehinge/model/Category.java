package com.mhs.goodsexchangehinge.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String categoryName;

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "category")
	private List<ProductExchange> productExchange = new ArrayList<>();

	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "category")
	private List<ProductRequest> productRequest = new ArrayList<>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<ProductExchange> getProductExchange() {
		return productExchange;
	}

	public void setProductExchangen(List<ProductExchange> productExchange) {
		this.productExchange = productExchange;
	}

	public List<ProductRequest> getProductRequest() {
		return productRequest;
	}

	public void setProductRequest(List<ProductRequest> productRequest) {
		this.productRequest = productRequest;
	}

}
