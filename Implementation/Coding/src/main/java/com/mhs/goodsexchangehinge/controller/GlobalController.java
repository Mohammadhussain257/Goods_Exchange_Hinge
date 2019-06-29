package com.mhs.goodsexchangehinge.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.mhs.goodsexchangehinge.dto.UserModel;
import com.mhs.goodsexchangehinge.model.User;
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
			// add user model
			// if the user is not inside the session then authenticate the user
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			User user = userService.findByUsername(auth.getName());
			if (user != null) {
				// create a new userModel object to pass the user details
				userModel = new UserModel();
				userModel.setUserId(user.getUserId());
				userModel.setFirstName(user.getFirstName());
				userModel.setLastName(user.getLastName());
				userModel.setGender(user.getGender());
				userModel.setDob(user.getDob());
				userModel.setAddress(user.getAddress());
				userModel.setPhoneNumber(user.getPhoneNumber());
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

	@ExceptionHandler(NoHandlerFoundException.class)
	public String handlerNoHandlerFoundException(Model model) {
		model.addAttribute("errorTitle", "The page is not constructed!");
		model.addAttribute("errorDescription", "The page your are looking for is not avialable now!");
		model.addAttribute("title", "404 Error Page");
		return "404";
	}

}
