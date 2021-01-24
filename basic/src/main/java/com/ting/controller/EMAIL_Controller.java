package com.ting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ting.domain.ClientInfoVO;
import com.ting.service.EMAIL_Service;


@Controller
public class EMAIL_Controller {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	private EMAIL_Service eMAIL_Service;

	//DB에 사용자입력 email존재하는지 확인하고 존재할경우 이메일 전송
	@PostMapping("/certifi_email")
	public ModelAndView passEmail(HttpServletRequest request, ClientInfoVO vo, HttpServletResponse response)
			throws Exception {
		response.setContentType("text/html;charset=utf-8");
		

		if (ObjectUtils.isEmpty(eMAIL_Service.email_check(vo))) {
			PrintWriter out = response.getWriter();
			out.print("해당 계정은 존재하지 않습니다.");
			out.close();
			return null;
		} else {
	
			Random num = new Random();
			int cnum = num.nextInt(10203) + 1229;
	
			
			try {
				
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				
				messageHelper.setFrom("jennymaster2020@gmail.com");
				messageHelper.setTo(vo.getEmail());
				messageHelper.setSubject( "비밀번호 찾기 인증 이메일 입니다."); 
				messageHelper.setText("\n - ting 비밀번호 찾기 - \n\n" + "비밀번호 찾기 인증번호는 [ " + cnum + " ] 입니다. "); 

				mailSender.send(message);

			} catch (Exception e) {
				System.out.println(e);
			}

			ModelAndView mv = new ModelAndView();
			mv.setViewName("Main_login_1_PW_certifi"); 
			mv.addObject("certifi_num", cnum);
			mv.addObject("email", vo.getEmail());

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('인증번호를 해당 이메일로 발송하였습니다. 인증번호를 입력해주세요.');</script>");
			out.flush();

			return mv;

		}

	}
	
	//사용자가 입력한 인증번호 일치여부 확인
	@PostMapping("/certifi_check")
	public ModelAndView certifi_check(HttpServletRequest request, ClientInfoVO vo,HttpServletResponse response)
			throws IOException {
		
		ModelAndView mv = new ModelAndView();
	
		if (request.getParameter("input_certifi_num").equals(request.getParameter("certifi_num"))) {
			
			mv.setViewName("Main_login_1_PW_reset");
			mv.addObject("email", vo.getEmail());
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('정상적으로 인증되었습니다. 비밀번호를 재설정 해주세요.');</script>");
			out.flush();

			return mv;

		} 
		
		else  {
			
			mv.setViewName("Main_login_1_PW_certifi");
			mv.addObject("email", vo.getEmail());
			mv.addObject("certifi_num", request.getParameter("certifi_num"));
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('인증번호가 일치하지않습니다. 인증번호를 다시 입력해주세요.'); </script>");
			out.flush();
			return mv;
			
		}

	}
	//사용자가 입력한 새로운 비밀번호 적용
	@PostMapping( "/reset_pwd")
	public ModelAndView reset_pwd(ClientInfoVO vo, HttpServletResponse response) throws Exception {
		
		eMAIL_Service.reset_pwd(vo);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('비밀번호가 정상적으로 변경되었습니다.'); </script>");
		out.flush();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("Main_login_0");
		return mv;
		
	}

}