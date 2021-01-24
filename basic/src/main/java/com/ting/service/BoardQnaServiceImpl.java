package com.ting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.BoardQnaDAO;
import com.ting.domain.BoardQnaVO;

@Service("boardQnaService")
public class BoardQnaServiceImpl implements BoardQnaService{

	@Autowired
	private BoardQnaDAO boardQnaDAO;
	
	@Override
	public void boardQnaAdd(BoardQnaVO vo) {
		System.out.println("Test"+vo.toString());
		boardQnaDAO.boardQnaAdd(vo);
		
	}

}
