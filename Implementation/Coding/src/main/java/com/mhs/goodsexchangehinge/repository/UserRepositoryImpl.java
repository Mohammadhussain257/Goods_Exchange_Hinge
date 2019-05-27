package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUser(User user) {
		HibernateUtil.getSession(sessionFactory).save(user);
	}

	@Override
	public void deleteUserInfo(int id) {
		User user = getUserById(id);
		if (user != null) {
			HibernateUtil.getSession(sessionFactory).delete(user);
		}
	}

	@Override
	public List<User> getAllUserList() {
		CriteriaQuery<User> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(User.class);
		criteriaQuery.from(User.class);
		List<User> userList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery).getResultList();
		return userList;
	}

	@Override
	public User getUserById(int id) {
		return (User) HibernateUtil.getSession(sessionFactory).get(User.class, id);
	}

	@Override
	public User findByUsername(String username) {
		@SuppressWarnings("deprecation")
		Criteria criteria = HibernateUtil.getSession(sessionFactory).createCriteria(User.class);
		return (User) criteria.add(Restrictions.eq("username", username)).uniqueResult();
	}

}
