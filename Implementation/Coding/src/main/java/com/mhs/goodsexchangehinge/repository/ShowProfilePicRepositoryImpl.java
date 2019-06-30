package com.mhs.goodsexchangehinge.repository;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class ShowProfilePicRepositoryImpl implements ShowProfilePicRepository {
	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private UserRepository userRepository;

	@SuppressWarnings("deprecation")
	@Override
	public ProfilePic showProfilePicById(int userId) {
		User user=userRepository.getUserById(userId);
		Criteria query = HibernateUtil.getSession(sessionFactory).createCriteria(ProfilePic.class);
		query.add(Restrictions.eq("user",user));
		return (ProfilePic)query.uniqueResult();
	}

}
