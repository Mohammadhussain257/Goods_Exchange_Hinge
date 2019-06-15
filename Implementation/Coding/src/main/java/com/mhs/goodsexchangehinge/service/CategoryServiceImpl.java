package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.repository.CategoryRepository;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryRepository categoryRepositroy;

	@Override
	public void saveCategory(Category category) {
		categoryRepositroy.saveCategory(category);
	}

	@Override
	public void updateCategory(Category category) {
		categoryRepositroy.updateCategory(category);
	}

	@Override
	public void deleteCategory(int id) {
		categoryRepositroy.deleteCategory(id);
	}

	@Override
	public Category getCategoryById(int id) {
		return categoryRepositroy.getCategoryById(id);
	}

	@Override
	public List<Category> getAllCategory() {
		return categoryRepositroy.getAllCategory();
	}

}
