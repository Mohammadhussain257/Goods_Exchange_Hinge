package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.repository.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public void saveUser(User user) {
		userRepository.saveUser(user);
	}

	@Override
	public void updateUser(User user) {
		userRepository.updateUser(user);
	}

	@Override
	public void deleteUserInfo(int userId) {
		userRepository.deleteUserInfo(userId);
	}

	@Override
	public List<User> getAllUserList() {
		return userRepository.getAllUserList();
	}

	@Override
	public User getUserById(int userId) {
		return userRepository.getUserById(userId);
	}

	@Override
	public User findByUsername(String username) {
		return userRepository.findByUsername(username);
	}

	@Override
	public User changePasswordByUserId(int userId) {
		return userRepository.changePasswordByUserId(userId);
	}

	@Override
	public User changePasswordByEmail(String email) {
		return userRepository.changePasswordByEmail(email);
	}

	@Override
	public void saveProfilePic(ProfilePic profilePic) {
		userRepository.saveProfilePic(profilePic);
	}

	@Override
	public User getPassword(String password) {
		return userRepository.getPassword(password);
	}

	@Override
	public User findUserByEmail(String email) {
		return userRepository.findUserByEmail(email);
	}

}
