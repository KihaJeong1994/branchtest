package com.ting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.CoupleDecisionVO;

@Repository("coupleDecisionDAO")
public class CoupleDecisionDAOImpl implements CoupleDecisionDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	public void insertCoupleDecision(CoupleDecisionVO vo) {
		System.out.println("===> Mybatis insertCoupleDecision() 호출");
		mybatis.insert("CoupleDecisionDAO.insertCoupleDecision", vo);
	}


}
