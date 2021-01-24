package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.PaymentVO;

public interface PaymentService {

	
	
	 void insertPayment(PaymentVO vo);
	
	
	 List<PaymentVO> getPaymentList(PaymentVO vo);
	
	 void updatetotalHeart(PaymentVO vo);
	 

}
