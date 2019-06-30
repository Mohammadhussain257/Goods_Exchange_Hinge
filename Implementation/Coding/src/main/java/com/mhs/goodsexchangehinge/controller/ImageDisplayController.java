package com.mhs.goodsexchangehinge.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.ProductRequestService;
import com.mhs.goodsexchangehinge.service.ShowProfilePicService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class ImageDisplayController {

	private static final Logger logger = LoggerFactory.getLogger(ImageDisplayController.class);
	@Autowired
	private ProductExchangeService productExchangeService;
	@Autowired
	private ProductRequestService productRequestService;
	@Autowired
	private ShowProfilePicService showProfilePicService;

	@RequestMapping(value = "/product_exhange_images", method = RequestMethod.GET)
	public void displayProductExchangeImage(@RequestParam("productExcId") int productExcId, HttpServletRequest request,
			HttpServletResponse response) {
		String imageUrl = productExchangeService.getProductById(productExcId).getImageUrl();
		ImageUtil.showImage(productExcId, imageUrl, request, response);
		logger.info("get image url and show image :" + imageUrl + " image id" + productExcId);
	}

	@RequestMapping(value = "/product_request_images", method = RequestMethod.GET)
	public void displayRequestImage(@RequestParam("productReqId") int productReqId, HttpServletRequest request,
			HttpServletResponse response) {
		String imageUrl = productRequestService.getProductById(productReqId).getImageUrl();
		ImageUtil.showImage(productReqId, imageUrl, request, response);
		logger.info("get image url and show image :" + imageUrl + " image id " + productReqId);
	}

	@RequestMapping(value = "/show_profile_pic", method = RequestMethod.GET)
	public void showProfilePic(@RequestParam int userId, HttpServletRequest request, HttpServletResponse response) {
		System.out.println("==========================");
		String imageUrl = showProfilePicService.showProfilePicById(userId).getImage_url();
		System.out.println("Image url is :"+imageUrl);
		ImageUtil.showImage(userId, imageUrl, request, response);
		System.out.println("==========================");
		logger.info("get image url and show image :" + imageUrl + " image id " + userId);
	}
}
