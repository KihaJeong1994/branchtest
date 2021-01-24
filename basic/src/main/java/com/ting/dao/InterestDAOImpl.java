package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.InterestVO;

@Repository("interestDAO")
public class InterestDAOImpl implements InterestDAO{
	
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입


	public List<InterestVO> getInterestList(InterestVO vo) {
		System.out.println("dao진입");
		List<InterestVO> result = mybatis.selectList("InterestDAO.getInterestList", vo);
		System.out.println("dao"+result);
		return result;
	}
	
}
