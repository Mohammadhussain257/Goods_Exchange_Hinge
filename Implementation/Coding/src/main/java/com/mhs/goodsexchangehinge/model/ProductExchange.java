package com.mhs.goodsexchangehinge.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class ProductExchange {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productExcId;
	@NotBlank(message = "Please enter produt name")
	private String productName;
	@NotNull(message = "Please enter produt value")
	@Min(value = 0, message = "Minimum value should be 0.0")
	private Double productValue;
	@NotBlank(message = "Please enter what your exchange open for")
	private String exchangeFor;
	@CreationTimestamp()
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@NotNull(message = "select date")
	private Date date;
	@NotBlank(message = "Please write description for product")
	private String description;
	private String imageUrl;
	@OneToOne(cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
	@JoinColumn(name = "userId", updatable = false, nullable = false)
	private User user;
	@ManyToOne(cascade = CascadeType.ALL)
	private Category category;

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

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
