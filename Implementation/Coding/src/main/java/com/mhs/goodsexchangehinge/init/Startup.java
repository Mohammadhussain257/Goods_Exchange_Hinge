package com.mhs.goodsexchangehinge.init;

import java.sql.Date;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import com.mhs.goodsexchangehinge.constant.Role;
import com.mhs.goodsexchangehinge.constant.Status;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.UserService;

@Component
public class Startup {
	@Autowired
	private UserService userService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@PostConstruct
	private void postConstruct() {

		try {
			User user = userService.findByUsername("admin123");
			if (user == null) {
				User u = new User();
				u.setFirstName("administrator");
				u.setLastName("administrator");
				u.setGender("Male");
				u.setDob(Date.valueOf("1995-11-21"));
				u.setEmail("Mohammadhusen257@gmail.com");
				u.setAddress("Madhyapur Thimi-7,Bhaktapur");
				u.setUsername("admin123");
				u.setPassword(passwordEncoder.encode("admin123"));
				u.setPhoneNumber("9849337966");
				u.setIsActive(Status.getActiveUser());
				u.setRole(Role.getRoleAdmin());
				userService.saveUser(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
