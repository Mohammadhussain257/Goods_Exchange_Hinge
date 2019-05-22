package com.mhs.goodsexchangehinge.service;

import java.util.List;

import com.mhs.goodsexchangehinge.model.User;

public interface UserService {
	public void saveOrUpdateUser(User user);

	public void deleteUserInfo(int id);
	
	public User getUserById(int id);
	
	public List<User> getAllUserList();
}
