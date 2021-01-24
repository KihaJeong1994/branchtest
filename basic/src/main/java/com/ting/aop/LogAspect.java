package com.ting.aop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.ting.dao.LoginLogDAO;
import com.ting.dao.TingBoardLogDAO;
import com.ting.domain.ClientInfoVO;
import com.ting.domain.LoginLogVO;
import com.ting.domain.TingBoardLogVO;
import com.ting.domain.TingBoardVO;


@Component
@Aspect
public class LogAspect {

	@Autowired
	private LoginLogDAO loginLogDAO;
	
	@Autowired
	private TingBoardLogDAO tingBoardLogDAO;
	
	@Around("execution(* com.ting.controller.ClientInfoController.loginf*(..))")
	public ModelAndView loginLogger(ProceedingJoinPoint jp) {
		Object[] fd = jp.getArgs();
		ModelAndView rpath = null;
		String methodName = jp.getSignature().getName();
		if (methodName.equals("loginf")) {
			LoginLogVO vo = new LoginLogVO();
			try {
				rpath = (ModelAndView) jp.proceed(); 
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					Object clientIdx = session.getAttribute("clientIdx");
					if (clientIdx != null) {
						vo.setIdxn((int)clientIdx);
						vo.setStatus("login");
						vo.setReip(request.getRemoteAddr());
						vo.setUagent("web");
						loginLogDAO.addLoginLogging(vo);
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		} else if (methodName.equals("loginfout")) {
			LoginLogVO vo = new LoginLogVO();
			try {
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					Object clientIdx = session.getAttribute("clientIdx");
					if (clientIdx != null) { 
						vo.setIdxn((int)clientIdx);
						vo.setStatus("logout");
						vo.setReip(request.getRemoteAddr());
						vo.setUagent("web");
						loginLogDAO.addLoginLogging(vo);
						System.out.println("db들어가기 완료");
					}
					rpath = (ModelAndView) jp.proceed();
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		System.out.println("insert!===================");
		return rpath;

	}
	
	@Around("execution(* com.ting.controller.TingBoardController.getBoard(..))")
	public String TingBoardLogger(ProceedingJoinPoint jp) {
		Object[] fd = jp.getArgs();
		String rpath = null;
		String methodName = jp.getSignature().getName();

			TingBoardLogVO vo = new TingBoardLogVO();
			try {
				rpath = (String) jp.proceed(); 
				if (fd[0] instanceof HttpSession && fd[1] instanceof HttpServletRequest && fd[2] instanceof TingBoardVO) {
					HttpSession session = (HttpSession) fd[0];
					HttpServletRequest request = (HttpServletRequest) fd[1];
					TingBoardVO tingBoardvo = (TingBoardVO) fd[2];
					Object clientIdx = session.getAttribute("clientIdx");
					if (clientIdx != null) {
						vo.setBoardIdx(tingBoardvo.getBoardIdx());
						vo.setClientIdx(((int)clientIdx));
						vo.setReip(request.getRemoteAddr());
						vo.setUagent("web");
						tingBoardLogDAO.TingBoardLogging(vo);
					}
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		
		System.out.println("insert!===================");
		return rpath;

	}
}
