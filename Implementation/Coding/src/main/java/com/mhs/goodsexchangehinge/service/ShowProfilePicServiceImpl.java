package com.mhs.goodsexchangehinge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.repository.ShowProfilePicRepository;

@Service
@Transactional
public class ShowProfilePicServiceImpl implements ShowProfilePicService {

	@Autowired
	private ShowProfilePicRepository showProfilePicRepository;

	@Override
	public ProfilePic showProfilePicById(int userId) {
		return showProfilePicRepository.showProfilePicById(userId);
	}

}
