package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.InterestVO;
import com.ting.service.ClientDetailInfoService;
import com.ting.service.ClientInterestService;
import com.ting.service.InterestService;

@Controller
public class InterestController {
	
	@Autowired
	private InterestService interestService;
	
	@Autowired
	private ClientInterestService clientInterestService;
	@Autowired
	private ClientDetailInfoService clientDetailInfoService;
	
	
	//관심사 목록 출력
	@RequestMapping(value = "/Client_4_interestInsert")
	public String getInterestList(InterestVO vo, Model m) {
			List<InterestVO> result = interestService.getInterestList(vo);
			m.addAttribute("InterestList", result);
			return "/Client_4_interestInsert";
		
	}
	//마이페이지 수정창 보기-회원관심사
	@RequestMapping("/Client_1_info_updateInterest")
	public String Client_1_info_updateInterest(ClientDetailInfoVO vo,InterestVO ivo,ClientInterestVO cvo,Model m,HttpSession session) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		cvo.setClientIdx((int)session.getAttribute("clientIdx"));
		ClientDetailInfoVO result = clientDetailInfoService.getClientDetailInfo(vo);
		List<InterestVO> interestList = interestService.getInterestList(ivo);
		List<ClientInterestVO> clientInterest = clientInterestService.getClientInterestList(cvo);
		m.addAttribute("myDetailInfo", result);
		m.addAttribute("InterestList", interestList);
		m.addAttribute("clientInterest", clientInterest);
		return "/Client_1_info_updateInterest";
	}
	
	// 회원 관심사 insert
	@RequestMapping("/insertClientInterest")
	public String insertClientInterest(ClientInterestVO vo,HttpSession session
			,@RequestParam("arr") String[] arr) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		for(String s : arr) {
			vo.setInterestIdx(Integer.parseInt(s));
			clientInterestService.insertClientInterest(vo);
		}
		return "redirect:/Client_4_charmingPointInsert";
	}
	
	// 회원 관심사 수정
	@RequestMapping("/updateClientInterest")
	public String updateClientInterest(ClientInterestVO vo,HttpSession session
			,@RequestParam("arr") String[] arr) {

		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		clientInterestService.deleteClientInterest(vo);
		for(String s : arr) {
			vo.setInterestIdx(Integer.parseInt(s));
			clientInterestService.insertClientInterest(vo);
		}
		return "redirect:/Client_1_info_updateInterest";
	}
	
}
