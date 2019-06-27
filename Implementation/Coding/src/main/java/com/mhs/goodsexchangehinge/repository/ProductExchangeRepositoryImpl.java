package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class ProductExchangeRepositoryImpl implements ProductExchangeRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveProduct(ProductExchange productExchange) {
		HibernateUtil.getSession(sessionFactory).merge(productExchange);
	}

	@Override
	public void updateProduct(ProductExchange productExchange) {
		HibernateUtil.getSession(sessionFactory).update(productExchange);
	}

	@Override
	public void deleteProduct(int productExcId) {
		ProductExchange product = getProductById(productExcId);
		if (product != null) {
			HibernateUtil.getSession(sessionFactory).delete(product);
		}
	}

	@Override
	public ProductExchange getProductById(int productExcId) {
		return (ProductExchange) HibernateUtil.getSession(sessionFactory).get(ProductExchange.class, productExcId);
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<ProductExchange> getAllProductExchangeListByUserId(int userId) {

		List<ProductExchange> pelist = HibernateUtil.getSession(sessionFactory)
				.createQuery("from ProductExchange p where p.user.userId=" + userId + " ").list();
		return (List<ProductExchange>) pelist;
	}

	@Override
	public List<ProductExchange> getAllProductExchangeList() {
		CriteriaQuery<ProductExchange> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(ProductExchange.class);
		criteriaQuery.from(ProductExchange.class);
		List<ProductExchange> productExchangeList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery)
				.getResultList();
		return productExchangeList;
	}

}
