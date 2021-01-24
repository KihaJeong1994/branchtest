package com.ting.dao;

import java.util.List;

import com.ting.domain.ReplyVO;

public interface ReplyDAO {

	// 
	public List<ReplyVO> getList(ReplyVO vo);

	// 
	public void write(ReplyVO vo);

	// 
	public void modify(ReplyVO vo);

	// 
	public void delete(ReplyVO vo);
}
