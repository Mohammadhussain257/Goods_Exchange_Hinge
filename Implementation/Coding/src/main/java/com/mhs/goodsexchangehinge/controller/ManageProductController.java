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
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.ProductRequestService;
import com.mhs.goodsexchangehinge.service.UserService;
import com.mhs.goodsexchangehinge.util.ImageUtil;

@Controller
public class ManageProductController {
	@Autowired
	private ProductExchangeService productExchangeService;
	@Autowired
	private ProductRequestService productRequestService;

	@Autowired
	private UserService userService;
	@Autowired
	private CategoryService categoryService;
	/*@Autowired
	private CommonsMultipartResolver commonMultipartResolver;*/

	@RequestMapping(value = "/save_product", method = RequestMethod.POST)
	public String saveProduct(@Valid @ModelAttribute("productExchange") ProductExchange productExchange,
			BindingResult result, @RequestParam("userId") int userId,
			@RequestParam("image") CommonsMultipartFile file) {
		if (result.hasErrors()) {
			return "Products/ProductExchange";
		}
		// Category category = new Category();
		// category = categoryService.getCategoryById(category.getId());
		User user = userService.getUserById(userId);
		String imageUrl = "";
		if (!file.getOriginalFilename().isEmpty()) {
			imageUrl = ImageUtil.writeImageToFile(file);
			user.getProductExchangelist().add(productExchange);
			// category.setId(category.getId());
			productExchange.setImageUrl(imageUrl);
			// productExchange.setCategory(category);
			productExchange.setUser(user);
			productExchangeService.saveProduct(productExchange);
		}
		return "redirect:/ProductExchange?userId=" + user.getUserId();
	}

	@RequestMapping(value = "/save_request_product", method = RequestMethod.POST)
	public String saveRequestProduct(@Valid @ModelAttribute("productRequest") ProductRequest productRequest,
			BindingResult result, @RequestParam("userId") int userId,
			@RequestParam("image") CommonsMultipartFile file) {
		if (result.hasErrors()) {
			return "Products/ProductRequest";
		}
		// category = categoryService.getCategoryById(category.getId());
		// Category category = new Category();
		User user = userService.getUserById(userId);
		String imageUrl = "";
		if (!file.getOriginalFilename().isEmpty()) {
			imageUrl = ImageUtil.writeImageToFile(file);
			user.getProductRequestlist().add(productRequest);
			// category.setId(category.getId());
			productRequest.setImageUrl(imageUrl);
			// productRequest.setCategory(category);
			productRequest.setUser(user);
			productRequestService.saveProduct(productRequest);
		}
		return "redirect:/ProductRequest?userId=" + user.getUserId();
	}

	@RequestMapping(value = "/update_request_product", method = RequestMethod.POST)
	public String updateRequestProduct(@Valid @ModelAttribute("productRequest") ProductRequest productRequest,
			BindingResult result, @RequestParam int productReqId,
			@RequestParam("image") CommonsMultipartFile file, Model model) {
		if (result.hasErrors()) {
			return "Products/editProductRequestDetail";
		}
		
		String imageUrl = "";
		if (file.isEmpty()) {
			imageUrl = productRequestService.getProductById(productReqId).getImageUrl();
		} else {
			imageUrl = ImageUtil.writeImageToFile(file);
		}
		imageUrl = ImageUtil.writeImageToFile(file);
		productRequest.setImageUrl(imageUrl);
		
		productRequestService.updateProduct(productRequest);
		model.addAttribute("update", "updated successfully");
		return "Products/editProductRequestDetail";
	}

	@RequestMapping(value = "/update_exchange_product", method = RequestMethod.POST)
	public String updateExchangeProduct(@Valid @ModelAttribute("productExchange") ProductExchange productExchange,
			BindingResult result, @RequestParam int productExcId,
			@RequestParam("image") CommonsMultipartFile file, Model model) {
		if (result.hasErrors()) {
			return "Products/editProductExchangeDetail";
		}
		
		String imageUrl = "";
		if (file.isEmpty()) {
			imageUrl = productExchangeService.getProductById(productExcId).getImageUrl();
		} else {
			imageUrl = ImageUtil.writeImageToFile(file);
		}
		imageUrl = ImageUtil.writeImageToFile(file);
		productExchange.setImageUrl(imageUrl);
		
		productExchangeService.updateProduct(productExchange);
		model.addAttribute("update", "updated successfully");
		return "Products/editProductExchangeDetail";
	}

	@RequestMapping(value = "/exchangeProductDetails", method = RequestMethod.GET)
	public String exchangeProductDetails(@RequestParam int userId, Model model) {
		model.addAttribute("proudctExhangeList", productExchangeService.getAllProductExchangeListByUserId(userId));
		return "Products/getExchangeProduct";
	}

	@RequestMapping(value = "/requestProductDetails", method = RequestMethod.GET)
	public String requestProductDetails(@RequestParam int userId, Model model) {
		model.addAttribute("proudctExhangeList", productRequestService.getAllProductRequestListByUserId(userId));
		return "Products/getRequestProduct";
	}

	@RequestMapping(value = "/ProductExchange", method = RequestMethod.GET)
	public String getProductExchangePage(@RequestParam("userId") int userId,
			@ModelAttribute("productExchange") ProductExchange productExchange, Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		model.addAttribute("user", userService.getUserById(userId));
		model.addAttribute("proudctExhangeList", productExchangeService.getAllProductExchangeListByUserId(userId));
		return "Products/ProductExchange";
	}

	@RequestMapping(value = "/ProductRequest", method = RequestMethod.GET)
	public String getProductRequestePage(@RequestParam("userId") int userId,
			@ModelAttribute("productRequest") ProductRequest productRequest, Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		model.addAttribute("user", userService.getUserById(userId));
		model.addAttribute("productRequestList", productRequestService.getAllProductRequestListByUserId(userId));
		return "Products/ProductRequest";
	}

	@RequestMapping(value = "/delete_product_exchange", method = RequestMethod.GET)
	public String deleteproductExchangeDetails(@ModelAttribute("productExchange") ProductExchange productExchange,
			@RequestParam int productExcId, Model model) {
		productExchangeService.deleteProduct(productExcId);
		model.addAttribute("deletemgs", "Product deleted successfully");
		return "Products/ProductExchange";
	}

	@RequestMapping(value = "/delete_request_exchange", method = RequestMethod.GET)
	public String deleteproductRequestDetails(@ModelAttribute("productRequest") ProductRequest productRequest,
			@RequestParam int productReqId, Model model) {
		productRequestService.deleteProduct(productReqId);
		model.addAttribute("deletemgs", "Product deleted successfully");
		return "Products/ProductRequest";
	}

	@RequestMapping(value = "/edit_request_product", method = RequestMethod.GET)
	public String editRequestProduct(@RequestParam int productReqId, Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		model.addAttribute("productRequest", productRequestService.getProductById(productReqId));
		return "Products/editProductRequestDetail";
	}

	@RequestMapping(value = "/edit_exchange_product", method = RequestMethod.GET)
	public String editExchangeProduct(@RequestParam int productExcId, Model model) {
		model.addAttribute("categoryList", categoryService.getAllCategory());
		model.addAttribute("productExchange", productExchangeService.getProductById(productExcId));
		return "Products/editProductExchangeDetail";
	}

}
