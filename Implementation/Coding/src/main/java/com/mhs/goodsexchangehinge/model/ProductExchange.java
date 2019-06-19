package com.mhs.goodsexchangehinge.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Future;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ProductExchange {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productExcId;
	@NotEmpty(message = "Please enter produt name")
	private String productName;
	@NotEmpty(message = "Please enter produt value")
	@Pattern(regexp = "[^0-9]*", message = "Invalid product value")
	private Double productValue;
	@NotEmpty(message = "Please enter what your exchange open for")
	private String exchangeFor;
	@NotEmpty(message = "Please select date")
	@Past(message = "Date should be in present")
	@Future(message = "Date must not be in future")
	private Date date;
	@NotEmpty(message = "Please write description for product")
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
