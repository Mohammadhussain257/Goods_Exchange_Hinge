package com.mhs.goodsexchangehinge.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class ProductRequest {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productReqId;
	private String location;
	private Double productValue;
	private String description;
	private String imageUrl;
	@ManyToOne
	private User user;
	@OneToOne(mappedBy="productRequest")
	private ProductRequestCompleted productRequestCompleted;
	@OneToMany(mappedBy = "productRequest")
	private List<Category> category=new ArrayList<>();

	public int getProductReqId() {
		return productReqId;
	}

	public void setProductReqId(int productReqId) {
		this.productReqId = productReqId;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Double getProductValue() {
		return productValue;
	}

	public void setProductValue(Double productValue) {
		this.productValue = productValue;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public ProductRequestCompleted getProductRequestCompleted() {
		return productRequestCompleted;
	}

	public void setProductRequestCompleted(ProductRequestCompleted productRequestCompleted) {
		this.productRequestCompleted = productRequestCompleted;
	}

	public List<Category> getCategory() {
		return category;
	}

	public void setCategory(List<Category> category) {
		this.category = category;
	}

}