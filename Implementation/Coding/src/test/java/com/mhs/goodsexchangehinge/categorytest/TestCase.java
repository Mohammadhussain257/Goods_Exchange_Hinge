package com.mhs.goodsexchangehinge.categorytest;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.service.CategoryService;
import com.mhs.goodsexchangehinge.service.FaqService;
import com.mhs.goodsexchangehinge.service.ProductExchangeService;
import com.mhs.goodsexchangehinge.service.ProductRequestService;
import com.mhs.goodsexchangehinge.service.UserService;

public class TestCase {

	private static AnnotationConfigApplicationContext context;
	private static CategoryService categoryService;
	private static ProductExchangeService productExchangeService;
	private static ProductRequestService productRequestService;
	private static FaqService faqService;
	private static UserService userService;
	private Category category;
	private User user;
	private ProductExchange productExchange;
	private ProductRequest productRequest;
	private Faq faq;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.mhs.goodsexchangehinge");
		context.refresh();
		categoryService = (CategoryService) context.getBean("categoryService");
		productExchangeService = (ProductExchangeService) context.getBean("productExchangeService");
		productRequestService = (ProductRequestService) context.getBean("ProductRequestService");
		userService = (UserService) context.getBean("userService");
		faqService = (FaqService) context.getBean("FaqService");
	}

	@Test
	public void testAddCategoryTest() {
		category = new Category();
		category.setCategoryName("Antiques");
		assertEquals("category successfully added", categoryService.addCategory(category));
	}

	
	@Test
	public void getSingleCategoryTest() {
		assertEquals("get single category", 1, categoryService.getCategoryById(3));
	}

	@Test
	public void testDeleteCategoryTest() {
		assertEquals("Successfully deleted category", true, categoryService.deleteCategoryTest(3));
	}

	@Test
	public void getALlUserListTestTest() {
		user = new User();
		if (user != null) {
			assertEquals("user list", 4, userService.getAllUserList().size());
		}
	}

	@Test
	public void getSingleUserTest() {
		assertEquals("get single user", 1, userService.getUserById(3));
	}


	@Test
	public void findUserByUsername() {
		String uname = "Test123";
		assertEquals("find username", true, userService.findByUsername(uname));
	}


	@Test
	public void getALlProductExchangeListTest() {
		productExchange = new ProductExchange();
		if (productExchange != null) {
			assertEquals("product exchange list", 4, productExchangeService.getAllProductExchangeList().size());
		}
	}

	@Test
	public void getSingleProductExchangeTest() {
		assertEquals("get single product", 1, productExchangeService.getProductById(2));
	}

	@Test
	public void getALlProductRequestListTest() {
		productRequest = new ProductRequest();
		if (productRequest != null) {
			assertEquals("product request list", 3, productRequestService.getAllProductRequestList().size());
		}
	}

	@Test
	public void getALlFaqListTest() {
		faq = new Faq();
		if (faq != null) {
			assertEquals("faq list", 4, faqService.getAllFaqList().size());
		}
	}
}
