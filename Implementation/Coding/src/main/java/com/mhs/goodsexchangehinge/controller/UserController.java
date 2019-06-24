package com.mhs.goodsexchangehinge.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mhs.goodsexchangehinge.constant.Role;
import com.mhs.goodsexchangehinge.constant.Status;
import com.mhs.goodsexchangehinge.model.ProfilePic;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.ShowProfilePicService;
import com.mhs.goodsexchangehinge.service.UserService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private ShowProfilePicService showProfilePicService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@RequestMapping(value = "/save_user", method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("user") User user, BindingResult result,
			@RequestParam("username") String username, @RequestParam("email") String email, Model model) {
		if (result.hasErrors()) {
			return "registration";
		}

		if ((userService.findByUsername(username) != null)) {
			model.addAttribute("usernameExist", "Username already exist");
			return "registration";
		}
		if ((userService.findUserByEmail(email) != null)) {
			model.addAttribute("emailExist", "Email address already exist");
			return "registration";
		}
		if (user != null) {
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			user.setRole(Role.getRoleUser());
			user.setIsActive(Status.getActiveUser());
			userService.saveUser(user);
			model.addAttribute("success", "Successfully registered please login to continue");
		}
		return "registration";
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

	@RequestMapping(value = "/uploadProfileimage", method = RequestMethod.POST)
	public String uploadProfileImage(@RequestParam int userId, @ModelAttribute User user,
			@ModelAttribute ProfilePic profilePic, @RequestParam("image") CommonsMultipartFile file, Model model) {
		User uId = userService.getUserById(userId);
		String imageUrl = "";
		if (!file.getOriginalFilename().isEmpty()) {
			imageUrl = ImageUtil.writeImageToFile(file);
			user.setProfilePic(profilePic);
			profilePic.setImage_url(imageUrl);
			profilePic.setUser(user);
			userService.saveProfilePic(profilePic);
		}

		return "redirect:/getProfile?userId=" + uId.getUserId();
	}

	@RequestMapping(value = "/editForm", method = RequestMethod.GET)
	public String editProfile(@RequestParam int userId, Model model) {
		model.addAttribute("user", userService.getUserById(userId));
		return "user/editProfile";
	}

	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public String updateUserDetail(@ModelAttribute User user, Model model) {
		User u = userService.getUserById(user.getUserId());
		if (user != null) {
			u.setRole(Role.getRoleUser());
			u.setIsActive(Status.getActiveUser());
			u.setFirstName(user.getFirstName());
			u.setLastName(user.getLastName());
			u.setEmail(user.getEmail());
			u.setDob(user.getDob());
			u.setAddress(user.getAddress());
			u.setPhoneNumber(user.getPhoneNumber());
			userService.updateUser(u);
			model.addAttribute("user", u);
			model.addAttribute("updatemsg", "Info updated successfully");
		}
		return "user/profile";
	}

	@RequestMapping(value = "/change_password", method = RequestMethod.POST)
	public String changePassword(@RequestParam("userId") int userId, @RequestParam("oldPassword") String oldPassword,
			@RequestParam("newPassword") String newPassword, @ModelAttribute("user") User user, Model model) {
		user = userService.getUserById(userId);
		if (passwordEncoder.matches(oldPassword, user.getPassword())) {
			user.setPassword(passwordEncoder.encode(newPassword));
			userService.updateUser(user);
			model.addAttribute("passwordChange", "Password change successfully");
		} else {
			model.addAttribute("errormsg", "Wrong old password");
		}
		return "user/editProfile";
	}

	@RequestMapping(value = "/show_profile_pic", method = RequestMethod.GET)
	public void showProfilePic(@RequestParam int userId, HttpServletRequest request, HttpServletResponse response) {
		String imageUrl = showProfilePicService.showProfilePicById(userId).getImage_url();
		ImageUtil.showImage(userId, imageUrl, request, response);
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
