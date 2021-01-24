package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ReplyVO;

@Repository("replyDAO")
public class ReplyDAOImple implements ReplyDAO {
	
	@Autowired 
	private SqlSessionTemplate mybatis;


	// 댓글 조회
	@Override
	public List<ReplyVO> getList(ReplyVO vo) {
		System.out.println("===> Mybatis replyList() 호출");
		return mybatis.selectList("replyMapper.list", vo);
	}

	// 댓글 작성
	@Override
	public void write(ReplyVO vo) {
		System.out.println("===> Mybatis replyWrite() 호출");
		mybatis.insert("replyMapper.write", vo);
	}

	// 댓글 수정
	@Override
	public void modify(ReplyVO vo) {
		mybatis.update("replyMapper.modify", vo);
	}

	// 댓글 삭제
	@Override
	public void delete(ReplyVO vo) {
		mybatis.delete("replyMapper.delete", vo);
	}
}
