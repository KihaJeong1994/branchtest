package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.InterestDAOImpl;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.InterestVO;
import com.ting.domain.TingBoardVO;


@Service("interestService")
public class InterestServiceImpl implements InterestService{

	//dao불러오는곳
	@Autowired
	private InterestDAOImpl interestDAO;
	
	

	public List<InterestVO> getInterestList(InterestVO vo) {
		System.out.println("서비스진입");
		List<InterestVO> result = interestDAO.getInterestList(vo);
		return result;
	}
	
	
}
