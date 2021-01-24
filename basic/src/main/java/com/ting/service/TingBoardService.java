package com.ting.service;

import java.util.List;

import com.ting.domain.PageVO;
import com.ting.domain.TingBoardLikeVO;
import com.ting.domain.TingBoardVO;

public interface TingBoardService {
	
	void insertBoard(TingBoardVO vo);


	void updateBoard(TingBoardVO vo);


	void deleteBoard(TingBoardVO vo);


	TingBoardVO getBoard(TingBoardVO vo);


//	List<TingBoardVO> getBoardList(TingBoardVO vo);
	
	List<TingBoardVO> getList(PageVO svo);
	
	public int like(String param);
	
	public List<TingBoardLikeVO> getBoardLikeCnt(int boardIdx);
	
}
