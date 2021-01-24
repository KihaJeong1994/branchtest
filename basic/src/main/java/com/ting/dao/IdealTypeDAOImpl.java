package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealTypeVO;

@Repository("idealTypeDAO")
public class IdealTypeDAOImpl implements IdealTypeDAO{
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	@Override
	public void insertIdealType(IdealTypeVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("IdealTypeDAO.insertIdealType", vo);
		
	}

	@Override
	public void updateIdealType(IdealTypeVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("IdealTypeDAO.updateIdealTypeDAO", vo);
		
	}

	@Override
	public void deleteIdealType(IdealTypeVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("IdealTypeDAO.deleteIdealTypeDAO", vo);
		
	}

	@Override
	public IdealTypeVO getIdealType(IdealTypeVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return mybatis.selectOne("IdealTypeDAO.getIdealType", vo);
	}

	@Override
	public List<IdealTypeVO> getIdealTypeList(IdealTypeVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("IdealTypeDAO.getIdealTypeDAOList", vo);
	}
}
