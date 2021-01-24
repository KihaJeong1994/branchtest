package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.IdealTypeVO;
import com.ting.domain.InterestVO;
import com.ting.domain.LikeReceiveVO;
import com.ting.domain.MbtiExplanationVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.ClientInterestService;
import com.ting.service.IdealTypeService;
import com.ting.service.InterestService;
import com.ting.service.MbtiExplanationService;

@Controller
public class ClientController {
	
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;
	@Autowired
	private MbtiExplanationService mbtiExplanationService;
	@Autowired
	private InterestService interestService;
	@Autowired
	private ClientInterestService clientInterestService;
	
	@Autowired
	private IdealTypeService idealTypeService;
	
	//회원 상세정보 입력 
	@RequestMapping("/insertClientDetailInfo")
	public String insertClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {
		
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.insertClientDetailInfo(vo);
		return "redirect:/Client_4_interestInsert";
	}
	
	//고객 사진 입력 
	@RequestMapping("/updatePhotoClientDetailInfo")
	public String updatePhotoClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.updatePhotoClientDetailInfo(vo);
		return "redirect:/Ideal_0_idealTypeInsert";
	}
	
	//이상형 정보 입력 
	@RequestMapping("/insertidealType")
	public String insertidealType(IdealTypeVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		idealTypeService.insertIdealType(vo);
		return "redirect:/index";
	}
	
	//마이페이지 보기 메소드
	@RequestMapping("/Client_0_main")
	public String Client_0_main(ClientDetailInfoVO vo,MbtiExplanationVO mvo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO myDetailInfo = clientDetailInfoService.getClientDetailInfo(vo);
		MbtiExplanationVO myMbtiExplanation = mbtiExplanationService.getMbtiExplanation(vo);
		m.addAttribute("myDetailInfo", myDetailInfo);
		m.addAttribute("myMbtiExplanation", myMbtiExplanation);
		return "/Client_0_main";
	}
	
	
	//마이페이지 수정창 보기-상세정보
	@RequestMapping("/Client_1_info_update")
	public String Client_1_info_update(ClientDetailInfoVO vo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		m.addAttribute("myDetailInfo", result);
		return "/Client_1_info_update";
	}
	

	//마이페이지 수정
	@RequestMapping("/updateClientDetailInfo")
	public String UpdateClientDetailInfo(ClientDetailInfoVO vo,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientDetailInfoService.updateClientDetailInfo(vo);;
		return "redirect:/Client_0_main";
	}
	
	
	
	//나에게 좋아요보낸 사람중 닉네임눌러서 상세정보 들어갔을때
	@RequestMapping("/Client_2_Ting_like_reply")
	public String getLikeReceiveList2(ClientDetailInfoVO vo1,LikeReceiveVO vo2, Model m,HttpSession session) {
		vo2.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo1);
		vo1.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result2 = clientDetailInfoService.getClientDetailInfo(vo1);
		m.addAttribute("clientDetailInfo",result);
		m.addAttribute("myClientDetailInfo",result2);
		return "/Client_2_Ting_like_reply";
				}
	
	
	
	
	//페이지 이동
	@RequestMapping("/{step}")
	public String viewPage(@PathVariable String step) {
		return "/"+step;
	}
	
	
}
