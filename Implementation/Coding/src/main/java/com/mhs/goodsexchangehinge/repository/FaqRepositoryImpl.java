package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class FaqRepositoryImpl implements FaqRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveFaq(Faq faq) {
		HibernateUtil.getSession(sessionFactory).merge(faq);
	}

	@Override
	public void updateFaq(Faq faq) {
		HibernateUtil.getSession(sessionFactory).update(faq);
	}

	@Override
	public void deleteFaq(int id) {
		Faq faq = getFaqById(id);
		if (faq != null) {
			HibernateUtil.getSession(sessionFactory).delete(faq);
		}

	}

	@Override
	public Faq getFaqById(int id) {
		return (Faq) HibernateUtil.getSession(sessionFactory).get(Faq.class, id);
	}

	@Override
	public List<Faq> getAllFaqList() {
		CriteriaQuery<Faq> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(Faq.class);
		criteriaQuery.from(Faq.class);
		List<Faq> faqList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery).getResultList();
		return (List<Faq>) faqList;
	}

}
