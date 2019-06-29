package com.mhs.goodsexchangehinge.repository;

import java.util.List;

import com.mhs.goodsexchangehinge.model.Faq;

public interface FaqRepository {
	public void saveFaq(Faq faq);

	public void updateFaq(Faq faq);

	public void deleteFaq(int id);

	public Faq getFaqById(int id);

	public List<Faq> getAllFaqList();

}
