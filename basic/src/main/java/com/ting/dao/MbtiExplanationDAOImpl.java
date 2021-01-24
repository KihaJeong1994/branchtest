package com.ting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.MbtiExplanationVO;

@Repository("mbtiExplanationDAO")
public class MbtiExplanationDAOImpl implements MbtiExplanationDAO{

	
	@Autowired
	private SqlSessionTemplate mybatis;

	public MbtiExplanationVO getMbtiExplanation(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis getMbtiExplanation() 호출");
		return mybatis.selectOne("MbtiExplanationDAO.getMbtiExplanation", vo);
	}

}
