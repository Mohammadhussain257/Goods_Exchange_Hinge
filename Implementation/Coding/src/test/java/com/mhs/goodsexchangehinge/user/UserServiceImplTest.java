package com.mhs.goodsexchangehinge.user;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.UserService;

public class UserServiceImplTest {

	@Autowired
	private UserService userService;

	@Test
	public void testFindUserByEmail() {
		User user = userService.findUserByEmail("user@gmail.com");
		assertNotNull(user);
		assertEquals("user@gmail.com", user.getEmail());
	}

}
