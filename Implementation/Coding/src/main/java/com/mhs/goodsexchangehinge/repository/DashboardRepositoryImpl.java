package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class DashboardRepositoryImpl implements DashboardRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("deprecation")
	@Override
	public void countProductExchangeRow() {
		Criteria crit = HibernateUtil.getSession(sessionFactory).createCriteria(ProductExchange.class);
		crit.setProjection(Projections.rowCount());
		List<Long> results = crit.list();
	}

}
