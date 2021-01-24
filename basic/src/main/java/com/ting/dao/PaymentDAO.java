package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.PaymentVO;

public interface PaymentDAO {

	
	public void insertPayment(PaymentVO vo);
	
	public List<PaymentVO> getPaymentList(PaymentVO vo);
	
	public void updatetotalHeart(PaymentVO vo);
	

}
