package com.mhs.goodsexchangehinge.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mhs.goodsexchangehinge.service.ProductExchangeService;

@Controller
public class ProductExchangeController {
	private static final Logger logger = LoggerFactory.getLogger(ProductExchangeController.class);
	@Autowired
	private ProductExchangeService productExchangeService;

	@RequestMapping(value = "/exchange", method = RequestMethod.GET)
	public String exchangeProduct(Model model) {
		logger.info("exchange page call");
		model.addAttribute("productExchangeList",productExchangeService.getAllProductExchangeList()); 
		return "Products/Exchange";
	}
	
	@RequestMapping(value = "/getProductExchangetDetail", method = RequestMethod.GET)
	public String productRequestDetails(@RequestParam("productExcId") int productExcId, Model model) {
		logger.info("getProductRequestDetail page call");
		model.addAttribute("spel", productExchangeService.getProductById(productExcId));
		return "Products/getExchangeProduct";
	}
}
