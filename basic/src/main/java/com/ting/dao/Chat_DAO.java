package com.ting.dao;

import java.util.HashMap;
import java.util.List;

import com.ting.domain.Chat_VO;
import com.ting.domain.CoupleDecisionVO;

public interface Chat_DAO {
	

	public HashMap<String, Integer> selectone_couple(CoupleDecisionVO vo);
	
	public void first_insert_chat(Chat_VO vo);
	
	public void insert_chat(Chat_VO vo);

	public List<Chat_VO> selectlist_read(Chat_VO vo);
	
	public List<Chat_VO> selectlist_chatlist(Chat_VO vo);
	
	public List<Chat_VO> selectone_notread_count(Chat_VO vo);
	
	public List<Chat_VO> selectlist_chatdata (Chat_VO vo);
	
	
	
	
	

}
