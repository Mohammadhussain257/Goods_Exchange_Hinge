package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.User;

public interface UserRepository {
	public void saveUser(User user);

	public void deleteUserInfo(int id);

	public User getUserById(int id);
	
	public List<User> getAllUserList();
	
	public User findByUsername(String username);
}
