package com.mhs.goodsexchangehinge.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.UserService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class ManageProductController {
	@Autowired
	private ProductExchangeService productExchangeService;

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/manageProduct", method = RequestMethod.GET)
	public String manageProduct(@RequestParam int userId, Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		model.addAttribute("user", userService.getUserById(userId));
		return "Products/manageProduct";
	}

	@RequestMapping(value = "/save_product", method = RequestMethod.POST)
	public String saveProduct(@RequestParam int userId, @RequestParam("category") int id, @ModelAttribute User user,
			@ModelAttribute @Valid ProductExchange productExchange, @RequestParam("image") CommonsMultipartFile file) {
		User uId = userService.getUserById(userId);
		Category category = categoryService.getCategoryById(id);
		String imageUrl = "";
		if (!file.getOriginalFilename().isEmpty()) {
			imageUrl = ImageUtil.writeImageToFile(file);
			user.getProductExchangelist().add(productExchange);
			category.setId(category.getId());
			productExchange.setImageUrl(imageUrl);
			productExchange.setCategory(category);
			productExchange.setUser(user);
			productExchangeService.saveProduct(productExchange);
		}
		return "redirect:/manageProduct?userId=" + uId.getUserId();
	}

	@RequestMapping(value = "/exchangeProductDetails", method = RequestMethod.GET)
	public String exchangeProductDetails() {
		return "Products/getExchangeProduct";
	}

	@RequestMapping(value = "/requestProductDetails", method = RequestMethod.GET)
	public String requestProductDetails() {
		return "Products/getRequestProduct";
	}
	@RequestMapping(value = "/homePagetProductDetails", method = RequestMethod.GET)
	public String homePageProductDetails() {
		return "Products/homePageProuctDetails";
	}
}