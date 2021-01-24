package com.ting.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.Chat_VO;
import com.ting.domain.CoupleDecisionVO;

@Repository("chat_DAO")
public class Chat_DAOImpl implements Chat_DAO {
	

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public HashMap<String, Integer> selectone_couple(CoupleDecisionVO vo) {
		return mybatis.selectOne("Chat_DAO.selectone_couple",vo);
	}

	@Override
	public void first_insert_chat(Chat_VO vo) {
		mybatis.insert("Chat_DAO.first_insert_chat",vo);

	}

	@Override
	public void insert_chat(Chat_VO vo) {
		mybatis.insert("Chat_DAO.insert_chat",vo);

	}

	@Override
	public List<Chat_VO> selectlist_read(Chat_VO vo) {
		return mybatis.selectList("Chat_DAO.selectlist_read",vo);
	}

	@Override
	public List<Chat_VO> selectlist_chatlist(Chat_VO vo) {
		return mybatis.selectList("Chat_DAO.selectlist_chatlist",vo);
	}

	@Override
	public List<Chat_VO> selectone_notread_count(Chat_VO vo) {
		return mybatis.selectOne("Chat_DAO.selectone_notread_count",vo);
	}

	@Override
	public List<Chat_VO> selectlist_chatdata(Chat_VO vo) {
		return mybatis.selectList("Chat_DAO.selectlist_chatdata",vo);
	}

}
