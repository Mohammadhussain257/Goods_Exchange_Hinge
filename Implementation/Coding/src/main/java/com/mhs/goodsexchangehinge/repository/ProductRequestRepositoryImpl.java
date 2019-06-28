package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class ProductRequestRepositoryImpl implements ProductRequestRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveProduct(ProductRequest productRequest) {
		HibernateUtil.getSession(sessionFactory).merge(productRequest);
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

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<ProductRequest> getAllProductRequestListByUserId(int userId) {
		List<ProductRequest> prlist = HibernateUtil.getSession(sessionFactory)
				.createQuery("from ProductRequest p where p.user.userId=" + userId + " ").list();
		return (List<ProductRequest>) prlist;
	}

	@Override
	public List<ProductRequest> getAllProductRequestList() {
		CriteriaQuery<ProductRequest> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(ProductRequest.class);
		criteriaQuery.from(ProductRequest.class);
		List<ProductRequest> productRequestList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery)
				.getResultList();
		return productRequestList;
	}

	@Override
	public List<ProductRequest> searchProduct(String Search) {
		@SuppressWarnings("deprecation")
		Criteria query = HibernateUtil.getSession(sessionFactory).createCriteria(ProductExchange.class);
		query.add(Restrictions.ilike("productName", Search, MatchMode.START));
		@SuppressWarnings("unchecked")
		List<ProductRequest> searchList = query.list();
		return (List<ProductRequest>) searchList;
	}

}
