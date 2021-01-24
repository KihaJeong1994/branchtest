package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;
import com.ting.domain.InterestVO;

@Repository("clientInterestDAO")
public class ClientInterestDAOImpl implements ClientInterestDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	public void insertClientInterest(ClientInterestVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("ClientInterestDAO.insertClientInterest", vo);
	}
	public void deleteClientInterest(ClientInterestVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("ClientInterestDAO.deleteClientInterest", vo);
	}
	

	public List<ClientInterestVO> getClientInterestList(ClientInterestVO vo) {
		List<ClientInterestVO> result = mybatis.selectList("ClientInterestDAO.getClientInterestList", vo);
		return result;
	}
	
}
