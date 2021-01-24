package com.ting.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.PageVO;
import com.ting.domain.TingBoardLikeVO;
import com.ting.domain.TingBoardVO;

@Repository("tingBoardDAO")
public class TingBoardDAOImpl implements TingBoardDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(TingBoardVO vo) {
	      System.out.println(vo.getContent());
		System.out.println("===> Mybatis insertBoard() �샇異�");
		mybatis.insert("TingBoardDAO.insertBoard", vo);
	}
	
	public void updateBoard(TingBoardVO vo) {
	      System.out.println(vo.getTitle());
		System.out.println("===> Mybatis updateBoard() �샇異�");
		mybatis.update("TingBoardDAO.updateBoard", vo);

	}
	
	public void deleteBoard(TingBoardVO vo) {
		System.out.println("===> Mybatis deleteBoard() �샇異�");
		mybatis.delete("TingBoardDAO.deleteBoard", vo);

	}
	
	public TingBoardVO getBoard(TingBoardVO vo) {
		System.out.println("===> Mybatis getBoard() �샇異�");
		return mybatis.selectOne("TingBoardDAO.getBoard", vo);
	}
	
	public List<TingBoardVO> getBoardList(TingBoardVO vo) {
		System.out.println("===> Mybatis getBoardList() �샇異�");
		return mybatis.selectList("TingBoardDAO.getBoardList", vo);
	}
	
	
	@Override
	public List<TingBoardVO> getList(PageVO svo){ //nowPage�벑�쑝濡� �뿰�궛�씠 �맂  start,end
		return mybatis.selectList("TingBoardDAO.list", svo);
	}
	
	@Override
	public int getTotalCount(PageVO svo) {//�쟾泥� �뜲�씠�꽣瑜� 湲곗��쑝濡� �럹�씠吏�瑜� �굹�닃寃껋씠湲� �븣臾몄뿉..
		return mybatis.selectOne("TingBoardDAO.totalCount", svo);
	}

	@Override
	public int likeSave(Map<String, Object> paramMap) {
		
		return mybatis.insert("TingBoardDAO.likeSave", paramMap);
	}

	@Override
	public List<TingBoardLikeVO> getBoardLikeCnt(Map<String, Object> param) {

		return mybatis.selectList("TingBoardDAO.likeCnt", param);
	}	
}
