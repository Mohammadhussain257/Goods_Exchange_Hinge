package com.mhs.goodsexchangehinge.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/get_home" }, method = RequestMethod.GET)
	public String home() {
		logger.info("Welcome home!");
		return "home";
	}

	@RequestMapping(value = "/register")
	public String getRegister() {
		logger.info("get registration page call");
		return "registration";
	}

	@RequestMapping(value = "/login")
	public String getLoginPage(@RequestParam(name = "error", required = false) String error, Model model,
			@RequestParam(name = "logout", required = false) String logout) {
		if (error != null) {
			model.addAttribute("message", "Invalid Username or Password");
		}
		if (logout != null) {
			model.addAttribute("logout", "You have Successfully Logged Out");
		}
		logger.info("login successfully");
		return "login";
	}

	@RequestMapping(value = "/logout-user")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// fetch the authentication object
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			// logout and clear out the session and remove the authentication from the
			// security context
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		logger.info("logout successfully");
		return "redirect:/login?logout";
	}

	@RequestMapping(value = "/exchange", method = RequestMethod.GET)
	public String exchangeProduct() {
		logger.info("exchange page call");
		return "Products/Exchange";
	}

	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String requestProduct() {
		logger.info("request page call");
		return "Products/Reqeust";
	}

	@RequestMapping(value = "/forum", method = RequestMethod.GET)
	public String getForum() {
		logger.info("forum page call");
		return "forum";
	}

	@RequestMapping(value = "/privacyPolicy", method = RequestMethod.GET)
	public String getPrivacyPolicy() {
		logger.info("privacy policy page call");
		return "privacyPolicy";
	}

	@RequestMapping(value = "/termOfUse", method = RequestMethod.GET)
	public String getTermOfUser() {
		logger.info("term of uses page call");
		return "termOfUse";
	}

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String helpPage() {
		logger.info("help page call");
		return "help";
	}

	@RequestMapping(value = "/access-denied")
	public String accessDenidPage(Model model) {
		model.addAttribute("title", "403 Access Denied");
		model.addAttribute("errorTitle", "Oppss!! Your access is refuse due to security reason.");
		model.addAttribute("errorDescription",
				"You are not authorized to visit this page! Please go back to the previous page to continue browsing.");
		logger.info("access denied");
		return "403";
	}

}
