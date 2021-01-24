package com.ting.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ting.domain.ClientInfoVO;
import com.ting.service.ClientInfoService;

@Controller
public class ClientInfoController {

	@Autowired
	private ClientInfoService clientInfoService;

	//로그인
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session, HttpServletRequest request) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("/Main_login_0");
		mav.addObject("msg", "login0");
		return mav;
	}
	//로그인
	@PostMapping(value = "/login")
	public ModelAndView loginf(HttpSession session,HttpServletRequest request, ClientInfoVO clientInfoVO) throws IOException {
		System.out.println("login request, id : " + clientInfoVO.getEmail());


		// 로그인 아이디, 패스워드 넘겨서 데이터베이스 조회, 로그인 정보를 돌려 받는다. 아이디 저장해야함 받은 아이디로 저장
		ClientInfoVO loginCheck = clientInfoService.login(clientInfoVO);
		ModelAndView mav = new ModelAndView();
		// 로긘이 성공한다면 세션에 UID 설정 후 메인으로 보낸다
		if (!ObjectUtils.isEmpty(loginCheck)) {
			session.setAttribute("UID", loginCheck.getEmail());
			session.setAttribute("clientIdx", loginCheck.getClientIdx());
			session.setAttribute("nickname", loginCheck.getClientDetailInfo().getNickname());
			System.out.println(session.getAttribute("clientIdx"));
			mav.setViewName("index");
			return mav;
		} else {
			// 로긘 실패하면 Main_login_0
			mav.setViewName("Main_login_0");
			return mav;
		}

		// return "redirect:/login"; return "/login";session.setAttribute("UID",
		// clientInfoVO.getEmail());
	}

	// 로그아웃 : http://localhost:8880/basic-1.0.0-BUILD-SNAPSHOT/logout 요청 받음
	// basic-1.0.0-BUILD-SNAPSHOT 은 서버 contextPath에 저장 되있음
	@GetMapping(value = "/logout")
	public ModelAndView loginfout(HttpSession session,HttpServletRequest request) {
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	//회원가입 페이지 이동
	@GetMapping("/register")
	public String registerClient(HttpSession session) {
		return "Main_register_2_membership";
	}
	
	//회원가입 
	@PostMapping("/register")
	public String registerClient(HttpSession session, @ModelAttribute ClientInfoVO clientInfoVO) {

		int registerRes = clientInfoService.register(clientInfoVO);
		ClientInfoVO loginCheck = clientInfoService.login(clientInfoVO);
		session.setAttribute("clientIdx", loginCheck.getClientIdx());
		session.setAttribute("UID", loginCheck.getEmail());
		return "redirect:/Client_4_detailInsertStart";
	}
	//회원가입
	@PostMapping("/deleteClientInfo")
	public String deleteClientInfo(HttpSession session) {
		return "";
	}

}