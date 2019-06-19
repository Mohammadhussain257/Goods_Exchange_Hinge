package com.mhs.goodsexchangehinge.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.UserService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class ProductExchangeController {
	@Autowired
	private ProductExchangeService productExchangeService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/manageProduct", method = RequestMethod.GET)
	public String manageProduct() {
		return "Products/manageProduct";
	}

	@RequestMapping(value = "/save_product", method = RequestMethod.POST)
	public String saveProduct(@RequestParam int userId, @ModelAttribute User user,
			@ModelAttribute @Valid ProductExchange productExchange, @RequestParam("image") CommonsMultipartFile file,
			BindingResult result) {
		User uId = userService.getUserById(userId);
		List<ProductExchange> productExchangeList = new ArrayList<>();
		String imageUrl = "";
		if (productExchange != null) {
			if (!file.getOriginalFilename().isEmpty()) {
				imageUrl = productExchangeService.getProductById(productExchange.getProductExcId()).getImageUrl();
			} else {
				imageUrl = ImageUtil.writeImageToFile(file);
				user.setProductExchangelist(productExchangeList);
				productExchange.setImageUrl(imageUrl);
				productExchange.setUser(user);
				productExchangeService.saveProduct(productExchange);
			}

		}
		return "redirect:/manageProduct?userId=" + uId.getUserId();
	}

}
