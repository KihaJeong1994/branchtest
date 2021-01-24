package com.ting.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ting.domain.Fun_Mbtitest_0_VO;
import com.ting.domain.Fun_my_character_VO;
import com.ting.domain.Fun_test2_ideal_VO;
import com.ting.domain.Fun_test2_myself_VO;
import com.ting.domain.Fun_your_character_VO;
import com.ting.service.Fun_Mbtitest_0_Service;



@Controller
public class FUN_Controller {
	
	@Autowired
	private Fun_Mbtitest_0_Service fun_Mbtitest_0_Service;
	

	@GetMapping("/mbti_test")
	public void mbti_test(@RequestParam("rsval") List<String> rsval,@RequestParam("mbti") String mbti, 
										Fun_Mbtitest_0_VO vo, Fun_my_character_VO myvo, HttpSession session) {
		
		 int romantist=0;
		 int homebody=0;
		 int planned=0;
		 int impromptu=0;
		 int outgoing=0;
		 int active=0;
		 int passive=0;
		 int leading=0;
		 int sensitive=0;
		 int rational=0;
		 int consider=0;
		 int detailed=0;
		 int sympathy=0;
		 int personal=0;
		 int contact_high=0;
		 int contact_low=0;
		 int sense=0;
		 int reaction=0;
		 int fashion=0;
		 
		if(rsval.get(0).equals("11")) {
			planned++;
			active++;
			leading++;
			rational++;
			detailed++;
		}
		if(rsval.get(0).equals("12")) {
			impromptu++;
			leading++;
		}
		if(rsval.get(1).equals("21")) {
			planned++;
			outgoing++;
			leading++;
			consider++;
			detailed++;
			sense++;
		}
		if(rsval.get(1).equals("22")) {
			passive++;
		}
		if(rsval.get(2).equals("31")) {
			planned++;
			consider++;
			detailed++;
			sense++;
		}
		if(rsval.get(2).equals("32")) {
			impromptu++;
			sensitive++;
		}
		if(rsval.get(3).equals("41")) {
			outgoing++;
			active++;
			leading++;
			rational++;
			personal++;
		}
		if(rsval.get(3).equals("42")) {
			sensitive++;
			sympathy++;
			reaction++;
		}
		
		if(rsval.get(4).equals("51")) {
			sensitive++;
			contact_high++;
		}
		if(rsval.get(4).equals("52")) {
			personal++;
		}
		
		if(rsval.get(5).equals("61")) {
			personal++;
		}
		if(rsval.get(5).equals("62")) {
			sensitive++;
			consider++;
			sympathy++;
			sense++;
			reaction++;
		}
		
		if(rsval.get(7).equals("81")) {
			outgoing++;
		}
		if(rsval.get(7).equals("82")) {
			homebody++;
		}
		
		if(rsval.get(8).equals("91")) {
			rational++;
			personal++;
		}
		if(rsval.get(8).equals("92")) {
			sensitive++;
		}
		
		if(rsval.get(9).equals("101")) {
			outgoing++;
		}
		if(rsval.get(9).equals("102")) {
			homebody++;
		}
		
		if(rsval.get(10).equals("111")) {
			outgoing++;
			leading++;
		}
		if(rsval.get(10).equals("112")) {
			leading++;
		}
		
		if(rsval.get(11).equals("121")) {
			rational++;
		}
		if(rsval.get(11).equals("122")) {
			sensitive++;
			sympathy++;
			sense++;
			reaction++;
		}
		
		if(rsval.get(12).equals("131")) {
			outgoing++;
			leading++;
			consider++;
		}
		if(rsval.get(12).equals("132")) {
			passive++;
			personal++;
		}
		
		if(rsval.get(13).equals("141")) {
			contact_high++;
		}
		if(rsval.get(13).equals("142")) {
			contact_low++;
		}
		
		if(rsval.get(14).equals("151")) {
			passive++;
		}
		if(rsval.get(14).equals("152")) {
			sense++;
			reaction++;
		}
		
		if(rsval.get(15).equals("161")) {
			rational++;
			personal++;
		}
		if(rsval.get(15).equals("162")) {
			sensitive++;
			consider++;
			sense++;
		}
		
		if(rsval.get(16).equals("171")) {
			contact_high++;
		}
		if(rsval.get(16).equals("172")) {
			rational++;
			personal++;
			contact_low++;
		}
		
		if(rsval.get(17).equals("181")) {
			rational++;
			personal++;
		}
		if(rsval.get(17).equals("182")) {
			romantist++;
		}
		
		if(rsval.get(18).equals("191")) {
			planned++;
		}
		if(rsval.get(18).equals("192")) {
			impromptu++;
		}
		
		if(rsval.get(19).equals("201")) {
			rational++;
		}
		if(rsval.get(19).equals("202")) {
			sensitive++;
		}
		
		vo.setFun_mbti_result(mbti);
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		myvo.setClientIdx((int)session.getAttribute("clientIdx"));
		
		myvo.setRomantist(romantist);
		myvo.setHomebody(homebody);
		myvo.setPlanned(planned);
		myvo.setImpromptu(impromptu);
		myvo.setOutgoing(outgoing);
		myvo.setActive(active);
		myvo.setPassive(passive);
		myvo.setLeading(leading);
		myvo.setSensitive(sensitive);
		myvo.setRational(rational);
		myvo.setConsider(consider);
		myvo.setDetailed(detailed);
		myvo.setSympathy(sympathy);
		myvo.setPersonal(personal);
		myvo.setContact_high(contact_high);
		myvo.setContact_low(contact_low);
		myvo.setSense(sense);
		myvo.setReaction(reaction);
		myvo.setFashion(fashion);
	
		vo.setMbti_q1(Integer.parseInt(rsval.get(0)));
		vo.setMbti_q2(Integer.parseInt(rsval.get(1)));
		vo.setMbti_q3(Integer.parseInt(rsval.get(2)));
		vo.setMbti_q4(Integer.parseInt(rsval.get(3)));
		vo.setMbti_q5(Integer.parseInt(rsval.get(4)));
		vo.setMbti_q6(Integer.parseInt(rsval.get(5)));
		vo.setMbti_q7(Integer.parseInt(rsval.get(6)));
		vo.setMbti_q8(Integer.parseInt(rsval.get(7)));
		vo.setMbti_q9(Integer.parseInt(rsval.get(8)));
		vo.setMbti_q10(Integer.parseInt(rsval.get(9)));
		vo.setMbti_q11(Integer.parseInt(rsval.get(10)));
		vo.setMbti_q12(Integer.parseInt(rsval.get(11)));
		vo.setMbti_q13(Integer.parseInt(rsval.get(12)));
		vo.setMbti_q14(Integer.parseInt(rsval.get(13)));
		vo.setMbti_q15(Integer.parseInt(rsval.get(14)));
		vo.setMbti_q16(Integer.parseInt(rsval.get(15)));
		vo.setMbti_q17(Integer.parseInt(rsval.get(16)));
		vo.setMbti_q18(Integer.parseInt(rsval.get(17)));
		vo.setMbti_q19(Integer.parseInt(rsval.get(18)));
		vo.setMbti_q20(Integer.parseInt(rsval.get(19)));
		
		fun_Mbtitest_0_Service.insert_Fun_Mbtitest_0(vo); 
		fun_Mbtitest_0_Service.insert_Fun_my_character(myvo);
	}
	
	@GetMapping("/test2_result")
	public void test2_result(@RequestParam("rs_list") List<String> rs_list,@RequestParam("category") String category, 
										@RequestParam("rs_text") String rs_text, HttpSession session,
										Fun_test2_ideal_VO idealvo,Fun_test2_myself_VO myvo, Fun_your_character_VO chvo) {
		
	     int your_gender=0; // 0:female 1:male
		 int your_fashion=0;
		 int outgoing=0;
		 int leading=0;
		 int personal=0;
		 int homebody=0;
		 int consider=0;
		 int sympathy=0;
		 int reaction=0;

		
		if(category.equals("1")) {
			
			idealvo.setFun_test2_ideal_result(rs_text);
			idealvo.setQ1(Integer.parseInt(rs_list.get(0)));
			idealvo.setQ2(Integer.parseInt(rs_list.get(1)));
			idealvo.setQ3(Integer.parseInt(rs_list.get(2)));
			idealvo.setQ4(Integer.parseInt(rs_list.get(3)));
			idealvo.setQ5(Integer.parseInt(rs_list.get(4)));
			idealvo.setQ6(Integer.parseInt(rs_list.get(5)));
			idealvo.setQ7(Integer.parseInt(rs_list.get(6)));
			idealvo.setClientIdx((int)session.getAttribute("clientIdx"));
			
			
			if(rs_list.get(1).equals("11")) {
				your_gender=1;
			}
			if(rs_list.get(2).equals("22")) {
				your_fashion=1;
			}
			if(rs_list.get(3).equals("13")) {
				outgoing++;
			}
			if(rs_list.get(3).equals("23")) {
				homebody++;
			}
			if(rs_list.get(4).equals("14")) {
				consider++;
				sympathy++;
				reaction++;
			}
			if(rs_list.get(4).equals("24")) {
				outgoing++;
				consider++;
			}
			if(rs_list.get(5).equals("15")) {
				leading++;
			}
			if(rs_list.get(5).equals("25")) {
				reaction++;
			}
			if(rs_list.get(6).equals("16")) {
				personal++;
			}
			
			chvo.setClientIdx((int)session.getAttribute("clientIdx"));
			chvo.setYour_gender(your_gender);
			chvo.setYour_fashion(your_fashion);
			chvo.setOutgoing(outgoing);
			chvo.setLeading(leading);
			chvo.setPersonal(personal);
			chvo.setHomebody(homebody);
			chvo.setConsider(consider);
			chvo.setSympathy(sympathy);
			chvo.setReaction(reaction);
			
			fun_Mbtitest_0_Service.insert_Fun_your_character(chvo);
			fun_Mbtitest_0_Service.insert_Fun_test2_ideal(idealvo);
			
		}else{
			myvo.setFun_test2_myself_result(rs_text);
			myvo.setQ1(Integer.parseInt(rs_list.get(0)));
			myvo.setQ2(Integer.parseInt(rs_list.get(1)));
			myvo.setQ3(Integer.parseInt(rs_list.get(2)));
			myvo.setQ4(Integer.parseInt(rs_list.get(3)));
			myvo.setQ5(Integer.parseInt(rs_list.get(4)));
			myvo.setQ6(Integer.parseInt(rs_list.get(5)));
			myvo.setQ7(Integer.parseInt(rs_list.get(6)));
			myvo.setClientIdx((int)session.getAttribute("clientIdx"));
			
			fun_Mbtitest_0_Service.insert_Fun_test2_myself(myvo);
		}
	}
	
}

		
