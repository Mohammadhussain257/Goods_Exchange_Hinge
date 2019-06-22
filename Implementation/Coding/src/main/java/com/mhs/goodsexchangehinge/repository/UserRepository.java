package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;

public interface UserRepository {
	public void saveUser(User user);

	public void updateUser(User user);

	public void deleteUserInfo(int userId);

	public void saveProfilePic(ProfilePic profilePic);

	public User getUserById(int userId);

	public List<User> getAllUserList();

	public User findByUsername(String username);

	public User findUserByEmail(String email);

	public String getPassword(String password);

	public User changePasswordByUserId(int userId);

	public User changePasswordByEmail(String email);
}
