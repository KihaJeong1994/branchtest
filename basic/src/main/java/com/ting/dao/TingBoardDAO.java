package com.ting.dao;

import java.util.List;
import java.util.Map;

import com.ting.domain.PageVO;
import com.ting.domain.TingBoardLikeVO;
import com.ting.domain.TingBoardVO;


public interface TingBoardDAO {

	public void insertBoard(TingBoardVO vo);

	//
	public void updateBoard(TingBoardVO vo);

	//
	public void deleteBoard(TingBoardVO vo);

	//
	public TingBoardVO getBoard(TingBoardVO vo);

	//
	public List<TingBoardVO> getBoardList(TingBoardVO vo);
			
	public List<TingBoardVO> getList(PageVO svo);
	  
	public int getTotalCount(PageVO svo);
	 

	public int likeSave(Map<String, Object> paramMap);
	
	public List<TingBoardLikeVO> getBoardLikeCnt(Map<String, Object> param);
}

