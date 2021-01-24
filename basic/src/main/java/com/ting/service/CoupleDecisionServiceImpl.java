package com.ting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.CoupleDecisionDAOImpl;
import com.ting.domain.CoupleDecisionVO;


@Service("coupleDecisionService")
public class CoupleDecisionServiceImpl implements CoupleDecisionService {
	
	@Autowired //@Resources
	private CoupleDecisionDAOImpl coupleDecisionDAO;

	public void insertCoupleDecision(CoupleDecisionVO vo) {

	coupleDecisionDAO.insertCoupleDecision(vo);
		
		
	}

}