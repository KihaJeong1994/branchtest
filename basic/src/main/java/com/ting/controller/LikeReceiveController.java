package com.ting.controller;


import java.util.List;

import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.Chat_VO;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.CoupleDecisionVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.Chat_Service;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.CoupleDecisionService;
import com.ting.service.LikeReceiveService;




@Controller
public class LikeReceiveController {
	
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;

	@Autowired
	private LikeReceiveService likeReceiveService;
	@Autowired
	private CoupleDecisionService coupleDecisionService;
	@Autowired
	private  Chat_Service chat_Service;

	   
	//내가 받은 좋아요 리스트 출력
	@RequestMapping("/Client_5_like_Received")
	public String getLikeReceiveList(LikeReceiveVO vo, Model m,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		List<LikeReceiveVO> result = likeReceiveService.getLikeReceiveList(vo);
		m.addAttribute("likeReceive", result);
		return "/Client_5_like_Received";
		
	}


	//나에게 좋아요 보낸 사람에게 맞좋아요 보냄
	@RequestMapping("/Client_2_Ting_result2")
	public String matchProcessing(CoupleDecisionVO vo,LikeReceiveVO lvo,Chat_VO chat_vo, Model m,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		lvo.setClientIdx(vo.getOtherIdx());
		lvo.setSendIdx((int)session.getAttribute("clientIdx"));
		coupleDecisionService.insertCoupleDecision(vo);	
		likeReceiveService.updateLikeReceive();
		chat_vo.setTo_id(lvo.getClientIdx());
		chat_vo.setFrom_id((int)session.getAttribute("clientIdx"));
		chat_vo.setContent("매칭 성공! 대화를 나눠보세요!");
		chat_Service.first_insert_chat(chat_vo);
		chat_vo.setTo_id((int)session.getAttribute("clientIdx"));
		chat_vo.setFrom_id(lvo.getClientIdx());
		chat_vo.setContent("매칭 성공! 대화를 나눠보세요!");
		chat_Service.first_insert_chat(chat_vo);
		return "/Client_2_Ting_result2";
	}

}