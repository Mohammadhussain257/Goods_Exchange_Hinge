package com.mhs.goodsexchangehinge.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.model.UserModel;
import com.mhs.goodsexchangehinge.service.UserService;

@ControllerAdvice
public class GlobalController {

	// get the object of session
	@Autowired
	private HttpSession session;

	@Autowired
	private UserService userService;

	private UserModel userModel = null;

	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if (session.getAttribute("userModel") == null) {
			// add the the user model
			// if the user is not inside the session then authenticate the user
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			User user = userService.findByUsername(auth.getName());
			if (user != null) {
				// create a new userModel object to pass the user details
				userModel = new UserModel();
				userModel.setUserId(user.getUserId());
				userModel.setEmail(user.getEmail());
				userModel.setIsActive(user.getIsActive());
				userModel.setUsername(user.getUsername());
				userModel.setRole(user.getRole());

				// set the userModel inside the session
				session.setAttribute("userModel", userModel);
				return userModel;

			}
		}
		// user is not null and already present inside the session
		return (UserModel) session.getAttribute("userModel");
	}
}
