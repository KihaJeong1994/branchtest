package com.ting.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.MbtiExplanationDAOImpl;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.MbtiExplanationVO;


@Service("mbtiExplanationService")
public class MbtiExplanationServiceImpl implements MbtiExplanationService{

	//dao불러오는곳
	@Autowired
	private MbtiExplanationDAOImpl mbtiExplanationDAO;
	

	public MbtiExplanationVO getMbtiExplanation(ClientDetailInfoVO vo) {
		return mbtiExplanationDAO.getMbtiExplanation(vo);
	}


}
