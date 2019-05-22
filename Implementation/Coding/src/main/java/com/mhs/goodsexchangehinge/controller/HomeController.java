package com.mhs.goodsexchangehinge.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/","get_home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/getDashboard", method = RequestMethod.GET)
	public String getDashboard() {
		return "dashboard/dashboard";
	}
	
	@RequestMapping(value="/user_detail",method=RequestMethod.GET)
	public String getUserDetails() {
		return "dashboard/user/userDetails";
	}
	
	@RequestMapping(value="/add_category",method=RequestMethod.GET)
	public String addCategory() {
		return "dashboard/category/addCategories";
	}

}
