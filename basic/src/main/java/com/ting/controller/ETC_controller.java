package com.ting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ETC_controller {
	
	@RequestMapping("/Main_login_0")
	public String tiles3() {
		return "/Main_login_0.jsp";
	}
	@RequestMapping("/Main_register_0")
	public String tiles4() {
		return "/Main_register_0.jsp";
	}
	@RequestMapping("/Main_register_1_agree")
	public String tiles5() {
		return "/Main_register_1_agree.jsp";
	}
	@RequestMapping("/Main_register_2_membership")
	public String tiles6() {
		return "/Main_register_2_membership.jsp";
	}
	@RequestMapping("/index")
	public String tiles7() {
		return "/index.jsp";
	}
	@RequestMapping("/FUN_1_mbti_1_my")
	public String tiles8() {
		return "/FUN_1_mbti_1_my.jsp";
	}
	@RequestMapping("/favicon")
	public String favicon() {
		return "/forward:/resources/images/favicon.ico";
	}

}
