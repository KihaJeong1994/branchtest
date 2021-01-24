package com.ting.service;

import java.util.HashMap;
import java.util.List;

import com.ting.domain.Chat_VO;
import com.ting.domain.CoupleDecisionVO;

public interface Chat_Service {
	
	HashMap<String, Integer> selectone_couple(CoupleDecisionVO vo);
	
	 void first_insert_chat(Chat_VO vo);
	
	 void insert_chat(Chat_VO vo);

	 List<Chat_VO> selectlist_read(Chat_VO vo);
	
	 List<Chat_VO> selectlist_chatlist(Chat_VO vo);
	
	 List<Chat_VO> selectone_notread_count(Chat_VO vo);
	
	 List<Chat_VO> selectlist_chatdata (Chat_VO vo);

}
