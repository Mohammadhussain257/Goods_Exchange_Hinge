package com.mhs.goodsexchangehinge.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.FaqService;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.ProductRequestService;
import com.mhs.goodsexchangehinge.service.UserService;

@Controller
public class DashboardController {
	private static final Logger logger = LoggerFactory.getLogger(DashboardController.class);
	@Autowired
	private UserService userService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private ProductExchangeService productExchangeService;

	@Autowired
	private ProductRequestService productRequestService;

	@Autowired
	private FaqService faqService;

	@RequestMapping(value = "/getDashboard", method = RequestMethod.GET)
	public String getDashboard() {
		return "dashboard/dashboard";
	}

	@RequestMapping(value = "/getFaq", method = RequestMethod.GET)
	public String getFaq(Model model) {
		model.addAttribute("faqList", faqService.getAllFaqList());
		return "dashboard/faq";
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
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result, Model model) {
		if (result.hasErrors()) {
			logger.info("error while adding category");
			return "dashboard/category/addCategories";
		}
		if (category != null) {
			categoryService.saveCategory(category);
			logger.info("category added successfully");
		}
		return "dashboard/category/addCategories";
	}

	@RequestMapping(value = "/addfaq", method = RequestMethod.POST)
	public String addFAQ(@Valid @ModelAttribute("faq") Faq faq, BindingResult result,
			@RequestParam("userId") int userId, Model model) {
		if (result.hasErrors()) {
			logger.info("error while adding faq");
			return "dashboard/faq";
		}
		User user = userService.getUserById(userId);
		if (faq != null) {
			user.getFaqList().add(faq);
			faq.setUser(user);
			faqService.saveFaq(faq);
			logger.info("Faq saved");
		}
		return "dashboard/faq";
	}

	@RequestMapping(value = "/delete_faq", method = RequestMethod.GET)
	public String deleteFaq(@RequestParam int id, Model model) {
		faqService.deleteFaq(id);
		model.addAttribute("deleteMsg", "Faq deleted");
		return "dashboard/faq";
	}

	@RequestMapping(value = "update_faq", method = RequestMethod.POST)
	public String updateFaq(@Valid @ModelAttribute("faq") Faq faq, BindingResult result, @RequestParam int id) {
		if (result.hasErrors()) {
			return "dashboard/editFaq";
		}
		faqService.updateFaq(faq);
		logger.info("Faq updated");

		return "dashboard/faq";
	}

	@RequestMapping(value = "/edit_faq", method = RequestMethod.GET)
	public String editForm(@RequestParam int id, Model model) {
		model.addAttribute("faq", faqService.getFaqById(id));
		return "dashboard/editFaq";
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

	@RequestMapping(value = "/dashboard_product_exchange", method = RequestMethod.GET)
	public String getProductExchangePage(Model model) {
		model.addAttribute("dpel", productExchangeService.getAllProductExchangeList());
		return "dashboard/product/exchange";
	}

	@RequestMapping(value = "/dashboard_product_request", method = RequestMethod.GET)
	public String getProductRequestePage(Model model) {
		model.addAttribute("dprl", productRequestService.getAllProductRequestList());
		return "dashboard/product/request";
	}

	@RequestMapping(value = "/deleteProductExchange", method = RequestMethod.GET)
	public String deleteproductExchangeDetails(@RequestParam int productExcId, Model model) {
		productExchangeService.deleteProduct(productExcId);
		model.addAttribute("deletemgs", "Product deleted successfully");
		return "Products/ProductExchange";
	}

	@RequestMapping(value = "/deleteRequestExchange", method = RequestMethod.GET)
	public String deleteproductRequestDetails(@RequestParam int productReqId, Model model) {
		productRequestService.deleteProduct(productReqId);
		model.addAttribute("deletemgs", "Product deleted successfully");
		return "Products/ProductRequest";
	}
}
