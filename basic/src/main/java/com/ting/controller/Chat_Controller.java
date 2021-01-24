package com.ting.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ting.domain.Chat_VO;
import com.ting.service.Chat_Service;



@Controller
public class Chat_Controller{
	

	@Autowired
	private Chat_Service chat_Service;

	@PostMapping(value="/no/select_data",consumes = MediaType.APPLICATION_JSON_VALUE,
			headers = {"Accept=application/json"})
	public @ResponseBody List<Chat_VO> select_data(HttpServletRequest request,@RequestBody Chat_VO chat, Chat_VO vo) {
		
		
		String aa="데이터넘김";
		vo.setTo_id(chat.getTo_id());
		vo.setFrom_id(chat.getFrom_id());


		List<Chat_VO> chatdata = chat_Service.selectlist_chatdata(vo);
		
		System.out.println(aa);

	
		
		
		return chatdata;
		
	}
	

	
	@PostMapping(value="/no/insert_data",consumes = MediaType.APPLICATION_JSON_VALUE,
			headers = {"Accept=application/json"})
	//public @ResponseBody void insert_data(HttpServletRequest request,@RequestBody Map<String, String> list, Chat_VO vo,  m) {
	public @ResponseBody void insert_data(HttpServletRequest request,@RequestBody Chat_VO chat, Chat_VO vo, Model m) {
		String a="메시지 저장";
		System.out.println(a);

		
		System.out.println(chat.getContent());
		System.out.println(chat.getTo_id());
		System.out.println(chat.getFrom_id());
		
		
		vo.setContent(chat.getContent());
		vo.setTo_id(chat.getTo_id());
		vo.setFrom_id(chat.getFrom_id());
		


		
		chat_Service.insert_chat(vo);
		
	

		
	}
	
	
	@RequestMapping("/no/Chatting_test")
	public String chatting_test(Chat_VO vo, Model m, HttpSession session) {
		String aa="나의채팅호출";
		String bb="채팅리스트호출";
		System.out.println(aa);
		vo.setTo_id((int)session.getAttribute("clientIdx"));
		System.out.println((int)session.getAttribute("clientIdx"));
		
		List<Chat_VO> chatlist=chat_Service.selectlist_chatlist(vo);
		
		m.addAttribute("chatlist",chatlist);
		System.out.println(bb);
		
		return "/Chatting_test.jsp";
	}
	
	
	@RequestMapping(value = "/testweb", method = RequestMethod.GET)
	public String testweb(Locale locale, Model model,  HttpSession session) {
		
		session.setAttribute("id", session.getId());
		
		return "chat";
	}
	
	@RequestMapping(value = "/FUN_3_randomchat1", method = RequestMethod.GET)
	public String FUN_3_randomchat1(Locale locale, Model model,  HttpSession session) {
		
		session.setAttribute("id", session.getId());
		
		return "FUN_3_randomchat1";
	}
	
	
	
}