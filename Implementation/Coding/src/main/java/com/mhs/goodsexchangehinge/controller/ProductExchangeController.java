package com.mhs.goodsexchangehinge.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.UserService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class ProductExchangeController {
	@Autowired
	private ProductExchangeService productExchangeService;

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/manageProduct", method = RequestMethod.GET)
	public String manageProduct() {
		return "Products/manageProduct";
	}

	@RequestMapping(value = "/save_product", method = RequestMethod.POST)
	public String saveProduct(@RequestParam int userId, @ModelAttribute User user,
			@ModelAttribute @Valid ProductExchange productExchange, @RequestParam("image") CommonsMultipartFile file,
			BindingResult result) {
		User uId = userService.getUserById(userId);
		String imageUrl = "";
		if (productExchange != null) {
			if (!file.getOriginalFilename().isEmpty()) {
				imageUrl = productExchangeService.getProductById(productExchange.getProductExcId()).getImageUrl();
			} else {
				imageUrl = ImageUtil.writeImageToFile(file);
				user.getProductExchangelist().add(productExchange);
				productExchange.setImageUrl(imageUrl);
				productExchange.setUser(user);
				productExchangeService.saveProduct(productExchange);
			}

		}
		return "redirect:/manageProduct?userId=" + uId.getUserId();
	}

	@RequestMapping(value="categoryList",method = RequestMethod.GET)
	public String getCategoryList(Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		return "redirect:/categoryList";

	}

}
