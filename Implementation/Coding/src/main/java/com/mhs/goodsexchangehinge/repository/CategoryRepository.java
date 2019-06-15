package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.Category;

public interface CategoryRepository {

	public void saveCategory(Category category);

	public void updateCategory(Category category);

	public void deleteCategory(int id);

	public Category getCategoryById(int id);

	public List<Category> getAllCategory();

}
