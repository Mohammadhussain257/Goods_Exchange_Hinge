package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class UserRepositoryImpl implements UserRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveUser(User user) {
		HibernateUtil.getSession(sessionFactory).merge(user);
	}

	@Override
	public void updateUser(User user) {
		HibernateUtil.getSession(sessionFactory).update(user);
	}

	@Override
	public void deleteUserInfo(int userId) {
		User user = getUserById(userId);
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
	public User getUserById(int userId) {
		return (User) HibernateUtil.getSession(sessionFactory).get(User.class, userId);
	}

	@Override
	public User findByUsername(String username) {
		@SuppressWarnings("deprecation")
		Criteria criteria = HibernateUtil.getSession(sessionFactory).createCriteria(User.class);
		return (User) criteria.add(Restrictions.eq("username", username)).uniqueResult();
	}

	@Override
	public User changePasswordByUserId(int userId) {
		return (User) HibernateUtil.getSession(sessionFactory).find(User.class, userId);
	}

	@Override
	public User changePasswordByEmail(String email) {
		return (User) HibernateUtil.getSession(sessionFactory).get(User.class, email);
	}

	@Override
	public void saveProfilePic(ProfilePic profilePic) {
		HibernateUtil.getSession(sessionFactory).save(profilePic);
	}

}
