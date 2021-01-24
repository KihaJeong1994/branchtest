package com.ting.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ting.dao.TingBoardDAO;
import com.ting.domain.PageVO;
import com.ting.domain.ReplyVO;
import com.ting.domain.TingBoardLikeVO;
import com.ting.domain.TingBoardVO;
import com.ting.service.ReplyService;
import com.ting.service.TingBoardService;

@Controller
public class TingBoardController {

	@Autowired
	private TingBoardService tingBoardService;
	

	@Autowired
	private ReplyService replyService;
	
	@Autowired
	public TingBoardDAO tingBoardDAO;
	
	//팅투데이 게시판 글 insert
	@RequestMapping("/insertBoard")
	public String insertBoard(TingBoardVO vo,HttpSession session) {
		vo.setClientIdx((int)session.getAttribute("clientIdx"));
		tingBoardService.insertBoard(vo);
		return "redirect:/Tingtoday_0_main";
	}
	//팅투데이 게시판 글 update
	@RequestMapping("/updateBoard")
	public String updateBoard(TingBoardVO vo) {
	      
		tingBoardService.updateBoard(vo);
	    return "redirect:/Tingtoday_0_main";
	   }
	
	//팅투데이 게시판 글 delete
   @RequestMapping("/deleteBoard")
   public String deleteBoard(TingBoardVO vo) {
	   
	   tingBoardService.deleteBoard(vo);
	   return "redirect:/Tingtoday_0_main";
   }
 //팅투데이 게시판 메인, 페이징처리
   @RequestMapping("/Tingtoday_0_main")
   public String listSearch( PageVO vo, Model model
           , @RequestParam(value="nowPage", required=false , 
           defaultValue="1") String nowPage 
           , @RequestParam(value="cntPerPage", required=false , 
           defaultValue="9") String cntPerPage){ 
      
        
      if(vo.getSearchType() == null) {
         int total = tingBoardDAO.getTotalCount(vo);
               vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage)); 
         }else {
            System.out.println("searchValue:"+vo.getSearchValue());
          int total = tingBoardDAO.getTotalCount(vo);
         vo = new PageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),vo.getSearchType(),vo.getSearchValue());
         }
      
      List<TingBoardVO> list = tingBoardService.getList(vo);
      for(TingBoardVO e: list) {
         System.out.println(e.getClientIdx());
      }
      model.addAttribute("paging", vo);
      model.addAttribute("boardList",list ); 
      return "/Tingtoday_0_main2";
     }
   
   @RequestMapping("/Tingtoday_0_view")
   public String getBoard(HttpSession session,HttpServletRequest request,TingBoardVO vo,Model m, ReplyVO svo) {
      TingBoardVO result = tingBoardService.getBoard(vo);
      m.addAttribute("board",result);

      // 댓글 조회
      List<ReplyVO> reply = null;
      reply = replyService.getList(svo);
      m.addAttribute("rvo", reply);
      
      
      List<TingBoardLikeVO> list = tingBoardService.getBoardLikeCnt(vo.getBoardIdx());
      System.out.println(1);
      session = request.getSession();
      Integer sessionId = (Integer) session.getAttribute("clientIdx");
      System.out.println("SessionId :: " + sessionId);
      //int seId = Integer.parseInt(sessionId);
      int likeyFl = 0;
      int like = 0;
      int unLike = 0;
      System.out.println("size :: " + list.size());
      
      try {
		  for (int i = 0; i < list.size(); i++) {
			  
	    	  if (list.get(i).getLikeyFl() == 1) {
	    		  like = list.get(i).getCnt();
	    	  } else if (list.get(i).getLikeyFl() == 2) {
	    		  unLike = list.get(i).getCnt();
	    	  }
	    	  System.out.println("client ID :: " + list.get(i).getClientIdx());
	    	  if (sessionId == list.get(i).getClientIdx()) {
	    		  System.out.println("helloworld");
	    		  likeyFl = list.get(i).getLikeyFl();
	    	  }
	      }
	  } catch (Exception e) {
			// TODO: handle exception
	  }
      
      System.out.println(likeyFl);
      System.out.println(like);
      System.out.println(unLike);
      m.addAttribute("likeyFl", likeyFl);
      m.addAttribute("like", like);
      m.addAttribute("unLike", unLike);
      
      return "/Tingtoday_0_view";
   }
   
   
   @PostMapping("/like")
   public @ResponseBody String likeCnt(@RequestBody String param) {
	   System.out.println("param"+param);
	   
	   int result = tingBoardService.like(param);
	  System.out.println(result);
	   if (result == 1) {
		   return "ok";
	   }
	   return null;
   }
}

	
