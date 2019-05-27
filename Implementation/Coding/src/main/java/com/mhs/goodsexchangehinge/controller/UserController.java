package com.mhs.goodsexchangehinge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@RequestMapping(value = "/save_user", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute User user, Model model) {
		if(user!=null) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.saveUser(user);
		}
		return "home";
	}

	@RequestMapping(value = "/getRegisterForm", method = RequestMethod.GET)
	public String getRegisterForm(@ModelAttribute User user) {
		return "registration";
	}

	@RequestMapping(value = "/getEditUserForm", method = RequestMethod.GET)
	public String getUserEditFrom() {
		return "";
	}

	@RequestMapping(value = "/updateUserDetails", method = RequestMethod.POST)
	public String updateUserDetail() {
		return "";
	}

	@RequestMapping(value = "/deleteUserDetails", method = RequestMethod.GET)
	public String deleteUserDetail() {
		return "";
	}

}
