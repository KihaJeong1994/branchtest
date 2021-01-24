package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.ReplyDAOImple;
import com.ting.domain.ReplyVO;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {


	@Autowired
	private ReplyDAOImple replyDAO;
	
	@Override
	public List<ReplyVO> getList(ReplyVO vo) {
		List<ReplyVO> result = replyDAO.getList(vo);
	    return result;
	}

	@Override
	public void write(ReplyVO vo) {
		replyDAO.write(vo);

	}

	@Override
	public void modify(ReplyVO vo) {
		replyDAO.modify(vo);

	}

	@Override
	public void delete(ReplyVO vo) {
		replyDAO.delete(vo);

	}

}
