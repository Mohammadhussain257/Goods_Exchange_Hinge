package com.mhs.goodsexchangehinge.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ProductExchange {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productExcId;
	private String productName;
	private Double productValue;
	private String exchangeFor;
	private Date date;
	private String description;
	private String imageUrl;
	@OneToOne
	private User user;

	public int getProductExcId() {
		return productExcId;
	}

	public void setProductExcId(int productExcId) {
		this.productExcId = productExcId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Double getProductValue() {
		return productValue;
	}

	public void setProductValue(Double productValue) {
		this.productValue = productValue;
	}

	public String getExchangeFor() {
		return exchangeFor;
	}

	public void setExchangeFor(String exchangeFor) {
		this.exchangeFor = exchangeFor;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
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
	
}
