package com.mhs.goodsexchangehinge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mhs.goodsexchangehinge.service.UserService;

@Controller
public class DashboardController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/getDashboard", method = RequestMethod.GET)
	public String getDashboard() {
		return "dashboard/dashboard";
	}

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public String getUserDetails(Model model) {
		model.addAttribute("users", userService.getAllUserList());
		return "dashboard/user/userDetails";
	}

	@RequestMapping(value = "/add_category", method = RequestMethod.GET)
	public String addCategory() {
		return "dashboard/category/addCategories";
	}
}
