package com.mhs.goodsexchangehinge.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mhs.goodsexchangehinge.model.Faq;
import com.mhs.goodsexchangehinge.repository.FaqRepository;

@Service
@Transactional
public class FaqServiceImpl implements FaqService {

	@Autowired
	private FaqRepository faqRepository;

	@Override
	public void saveFaq(Faq faq) {
		faqRepository.saveFaq(faq);
	}

	@Override
	public void updateFaq(Faq faq) {
		faqRepository.updateFaq(faq);
	}

	@Override
	public void deleteFaq(int id) {
		faqRepository.deleteFaq(id);
	}

	@Override
	public Faq getFaqById(int id) {
		return faqRepository.getFaqById(id);
	}

	@Override
	public List<Faq> getAllFaqList() {
		return faqRepository.getAllFaqList();
	}
}
