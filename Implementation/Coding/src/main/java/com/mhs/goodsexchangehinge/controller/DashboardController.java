package com.mhs.goodsexchangehinge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.UserService;

@Controller
public class DashboardController {

	@Autowired
	private UserService userService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/getDashboard", method = RequestMethod.GET)
	public String getDashboard() {
		return "dashboard/dashboard";
	}

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public String getUserDetails(Model model) {
		model.addAttribute("users", userService.getAllUserList());
		return "dashboard/user/userDetails";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Model model) {
		model.addAttribute("categories", categoryService.getAllCategory());
		return "dashboard/category/addCategories";
	}

	@RequestMapping(value = "/addCategory", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute Category category) {
		if (category != null) {
			categoryService.saveCategory(category);
		}
		return "dashboard/category/addCategories";
	}

	@RequestMapping(value = "/deleteCategory", method = RequestMethod.GET)
	public String deleteCategory(@RequestParam int id) {
		categoryService.deleteCategory(id);
		return "redirect:/category";
	}

	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public String deleteUser(@RequestParam int userId) {
		userService.deleteUserInfo(userId);
		return "redirect:/user_list";
	}

}
