package com.mhs.goodsexchangehinge.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ProductRequestCompleted {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int prcId;
	private Boolean status;
	@OneToOne
	private ProductRequest productRequest;
	public int getPrcId() {
		return prcId;
	}
	public void setPrcId(int prcId) {
		this.prcId = prcId;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public ProductRequest getProductRequest() {
		return productRequest;
	}
	public void setProductRequest(ProductRequest productRequest) {
		this.productRequest = productRequest;
	}
	
}
