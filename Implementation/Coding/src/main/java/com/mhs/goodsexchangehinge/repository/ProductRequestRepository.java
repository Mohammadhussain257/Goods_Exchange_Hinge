package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.ProductRequest;

public interface ProductRequestRepository {
	public void saveProduct(ProductRequest productRequest);

	public void updateProduct(ProductRequest productRequest);

	public void deleteProduct(int productReqId);

	public ProductRequest getProductById(int productReqId);

	public List<ProductRequest> getAllProductRequestListByUserId(int userId);
}
