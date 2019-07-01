package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.model.User;
import com.mhs.goodsexchangehinge.repository.DashboardRepository;

@Service
@Transactional
public class DashboardServiceImpl implements DashboardService {
	@Autowired
	private DashboardRepository dashboardRepositroy;

	@Override
	public List<ProductExchange> countAllExchangeProduct() {
		return dashboardRepositroy.countAllExchangeProduct();
	}

	@Override
	public List<ProductRequest> countAllRequestProduct() {
		return dashboardRepositroy.countAllRequestProduct();
	}

	@Override
	public List<User> countAllUser() {
		return dashboardRepositroy.countAllUser();
	}

	@Override
	public List<Faq> countAllFaq() {
		return dashboardRepositroy.countAllFaq();
	}

	@Override
	public List<Category> countAllCategory() {
		return dashboardRepositroy.countAllCategory();
	}

}
