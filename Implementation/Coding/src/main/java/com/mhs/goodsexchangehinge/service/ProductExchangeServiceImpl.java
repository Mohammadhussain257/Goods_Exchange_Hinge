package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.repository.ProductExchangeRepository;

@Service
@Transactional
public class ProductExchangeServiceImpl implements ProductExchangeService {
	@Autowired
	private ProductExchangeRepository productExchangeRepository;

	@Override
	public void saveProduct(ProductExchange productExchange) {
		productExchangeRepository.saveProduct(productExchange);
	}

	@Override
	public void updateProduct(ProductExchange productExchange) {
		productExchangeRepository.updateProduct(productExchange);
	}

	@Override
	public void deleteProduct(int productExcId) {
		productExchangeRepository.deleteProduct(productExcId);
	}

	@Override
	public ProductExchange getProductById(int productExcId) {
		return productExchangeRepository.getProductById(productExcId);
	}

	@Override
	public List<ProductExchange> getAllProductExchangeListByUserId(int userId) {
		return productExchangeRepository.getAllProductExchangeListByUserId(userId);
	}

}
