package com.ting.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.Chat_DAOImpl;
import com.ting.domain.Chat_VO;
import com.ting.domain.CoupleDecisionVO;

@Service("chat_Service")
public class Chat_ServiceImpl implements Chat_Service {
	
	
	@Autowired
	private Chat_DAOImpl chat_DAO;

	@Override
	public HashMap<String, Integer> selectone_couple(CoupleDecisionVO vo) {
		return chat_DAO.selectone_couple(vo);
	}

	@Override
	public void first_insert_chat(Chat_VO vo) {
		chat_DAO.first_insert_chat(vo);
	}

	@Override
	public void insert_chat(Chat_VO vo) {
		chat_DAO.insert_chat(vo);
	}

	@Override
	public List<Chat_VO> selectlist_read(Chat_VO vo) {
		return chat_DAO.selectlist_read(vo);
	}

	@Override
	public List<Chat_VO> selectlist_chatlist(Chat_VO vo) {
		return chat_DAO.selectlist_chatlist(vo);
	}

	@Override
	public List<Chat_VO> selectone_notread_count(Chat_VO vo) {
		return chat_DAO.selectone_notread_count(vo);
	}

	@Override
	public List<Chat_VO> selectlist_chatdata(Chat_VO vo) {
		return chat_DAO.selectlist_chatdata(vo);
	}

}
