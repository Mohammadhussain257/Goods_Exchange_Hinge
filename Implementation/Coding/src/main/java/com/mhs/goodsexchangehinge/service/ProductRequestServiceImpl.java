package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.repository.ProductRequestRepository;

@Service
@Transactional
public class ProductRequestServiceImpl implements ProductRequestService {

	@Autowired
	private ProductRequestRepository productRequestRepository;

	@Override
	public void saveProduct(ProductRequest productRequest) {
		productRequestRepository.saveProduct(productRequest);
	}

	@Override
	public void updateProduct(ProductRequest productRequest) {
		productRequestRepository.updateProduct(productRequest);
	}

	@Override
	public void deleteProduct(int productReqId) {
		productRequestRepository.deleteProduct(productReqId);
	}

	@Override
	public ProductRequest getProductById(int productReqId) {
		ProductRequest productRequest = productRequestRepository.getProductById(productReqId);
		return productRequest;
	}

	@Override
	public List<ProductRequest> getAllProductRequestListByUserId(int userId) {
		return productRequestRepository.getAllProductRequestListByUserId(userId);
	}

	@Override
	public List<ProductRequest> getAllProductRequestList() {
		return productRequestRepository.getAllProductRequestList();
	}

	@Override
	public List<ProductRequest> searchProduct(String Search) {
		return productRequestRepository.searchProduct(Search);
	}

}
