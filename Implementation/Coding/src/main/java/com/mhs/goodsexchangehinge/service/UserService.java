package com.mhs.goodsexchangehinge.service;

import java.util.List;

import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;

public interface UserService {
	public void saveUser(User user);

	public void updateUser(User user);

	public void deleteUserInfo(int userId);

	public void saveProfilePic(ProfilePic profilePic);

	public User getUserById(int userId);

	public List<User> getAllUserList();

	public User findByUsername(String username);

	public User changePasswordByUserId(int userId);

	public User changePasswordByEmail(String email);
}
