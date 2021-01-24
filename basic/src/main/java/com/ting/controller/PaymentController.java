package com.ting.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;


import com.ting.domain.PaymentVO;
import com.ting.service.PaymentService;




@Controller
public class PaymentController {

	
	
	@Autowired 
	 private PaymentService paymentService;
	

	   //결제 insert + 하트갯수 update
	   @GetMapping("/Premium_2_payresult")
	   public ModelAndView paymentResult(PaymentVO vo ) {		   
		      ModelAndView mav = new ModelAndView();
		      paymentService.insertPayment(vo);
		      paymentService.updatetotalHeart(vo);
		      mav.setViewName("/Premium_2_payresult");
		      return mav;
		   }
	   
	   //결제내역
		@RequestMapping("/PaymentList")
		public String getPaymentList(PaymentVO vo, Model m,HttpSession session) {			
			vo.setClientIdx((int)session.getAttribute("clientIdx"));
			List<PaymentVO> result = paymentService.getPaymentList(vo);		
			m.addAttribute("PaymentList", result);
			return "/PaymentList";
		} 

		
		
	   
	   
}
