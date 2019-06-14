package com.mhs.goodsexchangehinge.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mhs.goodsexchangehinge.constant.Role;
import com.mhs.goodsexchangehinge.constant.Status;
import com.mhs.goodsexchangehinge.model.ProfilePic;
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
		if (user != null) {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			user.setRole(Role.getRoleUser());
			user.setIsActive(Status.getActiveUser());
			userService.saveUser(user);
		}
		return "home";
	}

	@RequestMapping(value = "/getRegisterForm", method = RequestMethod.GET)
	public String getRegisterForm(@ModelAttribute User user) {
		return "registration";
	}

	@RequestMapping(value = "/getProfile", method = RequestMethod.GET)
	public String getUserProfile(@RequestParam int userId, Model model) {
		model.addAttribute("user", userService.getUserById(userId));
		return "user/profile";
	}

	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editProfile(@RequestParam int userId, Model model) {
		model.addAttribute("user", userService.getUserById(userId));
		return "user/editProfile";
	}

	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public String updateUserDetail(@ModelAttribute User user, Model model) {
		if (user != null) {
			user.setRole(Role.getRoleUser());
			user.setIsActive(Status.getActiveUser());
			user.setFirstName(user.getFirstName());
			user.setLastName(user.getLastName());
			user.setEmail(user.getEmail());
			user.setDob(user.getDob());
			user.setAddress(user.getAddress());
			user.setPhoneNumber(user.getPhoneNumber());
			userService.updateUser(user);
			model.addAttribute("updatemsg", "Info updated successfully");
		}
		return "redirect:/getProfile";
	}

	@RequestMapping(value = "/change_password", method = RequestMethod.POST)
	public String changePassword(@ModelAttribute User user, Model model) {
		if (user != null) {

			user.setPassword(passwordEncoder.encode(user.getPassword()));
		}
		return "redirect:/getProfile";
	}

	@RequestMapping(value = "/deleteUserDetails", method = RequestMethod.GET)
	public String deleteUserDetail() {
		return "";
	}

	@RequestMapping(value = "/upload_Profile_image", method = RequestMethod.POST)
	public String uploadProfileImage(@ModelAttribute User user, @ModelAttribute ProfilePic uploadImage,
			@RequestParam CommonsMultipartFile file) {

		return "redirect:/getProfile";
	}

	@ModelAttribute
	public Model getGenderList(Model model) {
		List<String> genderList = new ArrayList<>();
		genderList.add("Male");
		genderList.add("Female");
		genderList.add("Others");
		model.addAttribute("genderList", genderList);
		return model;
	}

}
