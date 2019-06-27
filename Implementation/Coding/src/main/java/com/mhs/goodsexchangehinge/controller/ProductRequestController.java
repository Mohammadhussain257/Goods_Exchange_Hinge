package com.mhs.goodsexchangehinge.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mhs.goodsexchangehinge.service.ProductRequestService;

@Controller
public class ProductRequestController {
	private static final Logger logger = LoggerFactory.getLogger(ProductRequestController.class);
	@Autowired
	private ProductRequestService productRequestService;

	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String requestProduct(Model model) {
		logger.info("request page call");
		model.addAttribute("productRequestList", productRequestService.getAllProductRequestList());
		return "Products/Reqeust";
	}

	@RequestMapping(value = "/getProductRequestDetail", method = RequestMethod.GET)
	public String productRequestDetails(@RequestParam("productReqId") int productReqId, Model model) {
		logger.info("getProductRequestDetail page call");
		model.addAttribute("sprl", productRequestService.getProductById(productReqId));
		return "Products/getRequestProduct";
	}
}
