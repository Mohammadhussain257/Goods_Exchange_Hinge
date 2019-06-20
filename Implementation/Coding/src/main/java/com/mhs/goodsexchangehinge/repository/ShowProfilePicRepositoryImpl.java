package com.mhs.goodsexchangehinge.repository;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class ShowProfilePicRepositoryImpl implements ShowProfilePicRepository {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public ProfilePic showProfilePicById(int userId) {
		return (ProfilePic) HibernateUtil.getSession(sessionFactory).get(ProfilePic.class, userId);
	}

}
