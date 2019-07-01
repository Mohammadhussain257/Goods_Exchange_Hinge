package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class DashboardRepositoryImpl implements DashboardRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<ProductExchange> countAllExchangeProduct() {

		@SuppressWarnings("rawtypes")
		List peCount = HibernateUtil.getSession(sessionFactory).createCriteria(ProductExchange.class)
				.setProjection(Projections.rowCount()).list();
		return (List<ProductExchange>) peCount;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<ProductRequest> countAllRequestProduct() {
		@SuppressWarnings("rawtypes")
		List peCount = HibernateUtil.getSession(sessionFactory).createCriteria(ProductRequest.class)
				.setProjection(Projections.rowCount()).list();
		return (List<ProductRequest>) peCount;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<User> countAllUser() {
		@SuppressWarnings("rawtypes")
		List userCount = HibernateUtil.getSession(sessionFactory).createCriteria(User.class)
				.setProjection(Projections.rowCount()).list();
		return (List<User>) userCount;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Faq> countAllFaq() {
		@SuppressWarnings("rawtypes")
		List totalFaq = HibernateUtil.getSession(sessionFactory).createCriteria(Faq.class)
				.setProjection(Projections.rowCount()).list();
		return (List<Faq>) totalFaq;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> countAllCategory() {
		@SuppressWarnings({ "rawtypes", "deprecation" })
		List totalCategory = HibernateUtil.getSession(sessionFactory).createCriteria(Category.class)
				.setProjection(Projections.rowCount()).list();
		return (List<Category>) totalCategory;
	}

}
