package com.mhs.goodsexchangehinge.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.service.CategoryService;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	private static CategoryService categoryService;
	private Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.mhs.goodsexchangehinge");
		context.refresh();
		categoryService = (CategoryService) context.getBean("categoryService");
	}

	/*
	 * @Test public void testAddCategory() { category = new Category();
	 * category.setCategoryName("Antiques");
	 * 
	 * assertEquals("Successfully added category in category table",
	 * categoryService.saveCategory(category)); }
	 */

	@Test
	public void testGetCategory() {
		category = categoryService.getCategoryById(4);
		assertEquals("SuccessFully fetch a single category", "Arts", category.getCategoryName());
	}

	/*
	 * @Test public void testUpdateCategory() { category =
	 * categoryService.getCategoryById(4); category.setCategoryName("Antiques");
	 * assertEquals("SuccessFully update a single category", true,
	 * categoryService.updateCategory(category)); }
	 */

	/*
	 * @Test public void testDeleteCategory() { category =
	 * categoryService.getCategoryById(4);
	 * assertEquals("Successfully deleted category", true,
	 * categoryService.deleteCategory(category)); }
	 */

}
