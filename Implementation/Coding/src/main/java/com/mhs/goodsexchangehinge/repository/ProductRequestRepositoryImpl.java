package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class ProductRequestRepositoryImpl implements ProductRequestRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveProduct(ProductRequest productRequest) {
		HibernateUtil.getSession(sessionFactory).save(productRequest);
	}

	@Override
	public void updateProduct(ProductRequest productRequest) {
		HibernateUtil.getSession(sessionFactory).update(productRequest);
	}

	@Override
	public void deleteProduct(int productReqId) {
		ProductRequest productRequest = getProductById(productReqId);
		if (productRequest != null) {
			HibernateUtil.getSession(sessionFactory).delete(productRequest);
		}
	}

	@Override
	public ProductRequest getProductById(int productReqId) {
		return (ProductRequest) HibernateUtil.getSession(sessionFactory).get(ProductRequest.class, productReqId);
	}

	@Override
	public List<ProductRequest> getAllProductRequestListByUserId(int userId) {
		CriteriaQuery<ProductRequest> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(ProductRequest.class);
		List<ProductRequest> productRequestList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery)
				.getResultList();
		return productRequestList;
	}

}
