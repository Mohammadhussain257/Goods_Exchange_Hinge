package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.util.HibernateUtil;

@Repository
public class CategoryRepositoryImpl implements CategoryRepository {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCategory(Category category) {
		HibernateUtil.getSession(sessionFactory).merge(category);
	}

	@Override
	public void updateCategory(Category category) {
		HibernateUtil.getSession(sessionFactory).update(category);
	}

	@Override
	public void deleteCategory(int id) {
		Category category = getCategoryById(id);
		if (category != null) {
			HibernateUtil.getSession(sessionFactory).delete(category);
		}
	}

	@Override
	public Category getCategoryById(int id) {
		return (Category) HibernateUtil.getSession(sessionFactory).get(Category.class, id);
	}

	@Override
	public List<Category> getAllCategory() {
		CriteriaQuery<Category> criteriaQuery = HibernateUtil.getSession(sessionFactory).getCriteriaBuilder()
				.createQuery(Category.class);
		criteriaQuery.from(Category.class);
		List<Category> categoryList = HibernateUtil.getSession(sessionFactory).createQuery(criteriaQuery)
				.getResultList();
		return categoryList;
	}

	@Override
	public boolean addCategory(Category category) {
		try {
			HibernateUtil.getSession(sessionFactory).merge(category);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean deleteCategoryTest(int id) {
		try {
			Category cat = new Category();
			if (cat != null) {
				HibernateUtil.getSession(sessionFactory).delete(cat);
			}
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
