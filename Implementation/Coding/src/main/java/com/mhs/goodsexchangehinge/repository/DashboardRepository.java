package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.Category;
import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.model.ProductExchange;
import com.mhs.goodsexchangehinge.model.ProductRequest;
import com.mhs.goodsexchangehinge.model.User;

public interface DashboardRepository {

	public List<ProductExchange> countAllExchangeProduct();

	public List<ProductRequest> countAllRequestProduct();

	public List<User> countAllUser();

	public List<Faq> countAllFaq();

	public List<Category> countAllCategory();
}
