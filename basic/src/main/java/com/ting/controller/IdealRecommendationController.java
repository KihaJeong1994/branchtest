package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.CoupleDecisionVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.IdealTypeVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.domain.MbtiExplanationVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.IdealRecommendationService;
import com.ting.service.IdealTypeService;
import com.ting.service.LikeReceiveService;
import com.ting.service.MbtiExplanationService;

@Controller
public class IdealRecommendationController {
	

	@Autowired
	private IdealRecommendationService idealRecommendationService;

	@Autowired
	private ClientDetailInfoService clientDetailInfoService;
	
	@Autowired
	private LikeReceiveService likeReceiveService;
	
	//오늘의 매칭 리스트 출력 + 하트 개수 출력
		@RequestMapping(value = "/Client_2_Ting_main")
		public String getIdealRecommendationList(ClientDetailInfoVO vo, Model m, HttpSession session) {
			try {
				if (session.getAttribute("clientIdx") == null) {
					return "Main_login_0";
				} else {
					vo.setClientIdx((int) session.getAttribute("clientIdx"));
					List<IdealRecommendationVO> result = idealRecommendationService.getIdealRecommendationList(vo);
					m.addAttribute("idealRecommendation", result);
					int heartCnt = clientDetailInfoService.getTotalHeart(vo);
					m.addAttribute("heartCnt", heartCnt);
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
			}
			return "/Client_2_Ting_main";
		}

		//일반 매칭에서 매칭상대 상세보기 들어갔을때
		@RequestMapping("/Client_2_Ting_like")
		public String getClientDetailInfo(ClientDetailInfoVO vo,Model m,HttpSession session) {
			ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
			vo.setClientIdx((int)session.getAttribute("clientIdx"));
			ClientDetailInfoVO result2 = clientDetailInfoService.getClientDetailInfo(vo);
			m.addAttribute("clientDetailInfo",result);
			m.addAttribute("myClientDetailInfo",result2);
			int heartCnt= clientDetailInfoService.getTotalHeart(vo);
			m.addAttribute("heartCnt", heartCnt);
			return "/Client_2_Ting_like";
		}

		//상대방에게 좋아요 보내기
		@RequestMapping("/insertLikeReceive")
		public String insertLikeReceive(LikeReceiveVO vo,IdealRecommendationVO ivo,HttpSession session) {
			vo.setSendIdx((int)session.getAttribute("clientIdx"));
			ivo.setClientIdx((int)session.getAttribute("clientIdx"));
			ivo.setRecommendedPeopleIdx(vo.getClientIdx());
			likeReceiveService.insertLikeReceive(vo);
			idealRecommendationService.updateIdealRecommendation(ivo);
			ClientDetailInfoVO c= new ClientDetailInfoVO();
			c.setClientIdx((int)session.getAttribute("clientIdx"));
			clientDetailInfoService.reduceTotalHeart(c);
			return "/Client_2_Ting_result";
		}
		
		
		//내가 보낸 좋아요 리스트 출력
		@RequestMapping("/Client_5_like_Sent")
		public String getLikeSendList(IdealRecommendationVO vo, Model m,HttpSession session) {
			System.out.println(session.getAttribute("clientIdx"));
			vo.setClientIdx((int)session.getAttribute("clientIdx"));
			List<IdealRecommendationVO> result = idealRecommendationService.getLikeSendList(vo);
			m.addAttribute("likeSend", result);
			return "/Client_5_like_Sent";
		}
		
}
