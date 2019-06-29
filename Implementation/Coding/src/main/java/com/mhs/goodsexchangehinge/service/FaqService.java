package com.mhs.goodsexchangehinge.service;

import java.util.List;

import com.mhs.goodsexchangehinge.model.Faq;

public interface FaqService {
	public void saveFaq(Faq faq);

	public void updateFaq(Faq faq);

	public void deleteFaq(int id);

	public Faq getFaqById(int id);

	public List<Faq> getAllFaqList();
}
