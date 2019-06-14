package com.mhs.goodsexchangehinge.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ProductExchangeCompleted {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int pecId;
	private Boolean status;
	@OneToOne
	private ProductExchange productExchange;
	public int getPecId() {
		return pecId;
	}
	public void setPecId(int pecId) {
		this.pecId = pecId;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public ProductExchange getProductExchange() {
		return productExchange;
	}
	public void setProductExchange(ProductExchange productExchange) {
		this.productExchange = productExchange;
	}
	

}
