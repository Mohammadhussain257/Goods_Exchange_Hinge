package com.mhs.goodsexchangehinge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.repository.DashboardRepository;

@Service
@Transactional
public class DashboardServiceImpl implements DashboardService{

	@Autowired
	private DashboardRepository dashboardRepository;

	@Override
	public void countProductExchangeRow() {
		dashboardRepository.countProductExchangeRow();
	}
}
