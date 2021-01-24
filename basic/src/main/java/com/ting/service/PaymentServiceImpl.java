package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.PaymentDAOImpl;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.PaymentVO;



@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentDAOImpl PaymentDAO;
	
	
	public void insertPayment(PaymentVO vo) {
		
		PaymentDAO.insertPayment(vo);
	}
	
	public List<PaymentVO> getPaymentList(PaymentVO vo) {
		System.out.println("===> service getPaymentList() �샇異�");
		return PaymentDAO.getPaymentList(vo);
		
	}
	
	public void updatetotalHeart(PaymentVO vo) {
		
		PaymentDAO.updatetotalHeart(vo);
	}
	
	
	

	
}
