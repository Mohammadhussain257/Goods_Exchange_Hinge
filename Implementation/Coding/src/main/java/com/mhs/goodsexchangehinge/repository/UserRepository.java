package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.User;

public interface UserRepository {
	public void saveUser(User user);

	public void updateUser(User user);

	public void deleteUserInfo(int userId);

	public User getUserById(int userId);

	public List<User> getAllUserList();

	public User findByUsername(String username);

	public User changePasswordByUserId(int userId);

	public User changePasswordByEmail(String email);
}
