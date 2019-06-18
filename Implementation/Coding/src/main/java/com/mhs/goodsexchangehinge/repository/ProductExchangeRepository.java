package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.ProductExchange;

public interface ProductExchangeRepository {

	public void saveProduct(ProductExchange productExchange);

	public void updateProduct(ProductExchange productExchange);

	public void deleteProduct(int productExcId);

	public ProductExchange getProductById(int productExcId);

	public List<ProductExchange> getAllProductExchangeListByUserId(int userId);

}
