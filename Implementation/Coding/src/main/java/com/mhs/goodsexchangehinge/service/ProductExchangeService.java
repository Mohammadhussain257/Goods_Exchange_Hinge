package com.mhs.goodsexchangehinge.service;

import java.util.List;

import com.mhs.goodsexchangehinge.model.ProductExchange;

public interface ProductExchangeService {
	public void saveProduct(ProductExchange productExchange);

	public void updateProduct(ProductExchange productExchange);

	public void deleteProduct(int productExcId);

	public ProductExchange getProductById(int productExcId);

	public List<ProductExchange> getAllProductExchangeListByUserId(int userId);

	public List<ProductExchange> getAllProductExchangeList();

	public List<ProductExchange> searchProduct(String Search);
}
