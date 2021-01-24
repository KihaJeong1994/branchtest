package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.LikeReceiveVO;

@Repository("idealRecommendationDAO")
public class IdealRecommendationDAOImpl implements IdealRecommendationDAO{
	@Autowired 
	private SqlSessionTemplate mybatis; 

	public void insertIdealRecommendation(IdealRecommendationVO vo) {
		System.out.println("===> Mybatis insertIdealRecommendation() 호출");
		mybatis.insert("IdealRecommendationDAO.insertIdealRecommendation", vo);
	}

	public void updateIdealRecommendation(IdealRecommendationVO vo) {
		System.out.println("===> Mybatis updateIdealRecommendation() 호출");
		mybatis.update("IdealRecommendationDAO.updateIdealRecommendation",vo);
	}

	public void deleteIdealRecommendation(IdealRecommendationVO vo) {
		System.out.println("===> Mybatis deleteIdealRecommendation() 호출");
		mybatis.delete("IdealRecommendationDAO.deleteIdealRecommendation", vo);
	}

	public IdealRecommendationVO getIdealRecommendation(IdealRecommendationVO vo) {
		System.out.println("===> Mybatis getIdealRecommendation() 호출");
		return mybatis.selectOne("IdealRecommendationDAO.getIdealRecommendation", vo);
	}

	public List<IdealRecommendationVO> getIdealRecommendationList(ClientDetailInfoVO vo) {
		System.out.println("===> Mybatis getIdealRecommendationList() 호출");
		return mybatis.selectList("IdealRecommendationDAO.getIdealRecommendationList", vo);
	}

	public List<IdealRecommendationVO> getLikeSendList(IdealRecommendationVO vo) {
		System.out.println("===> Mybatis getLikeSendList() 실행");
		return mybatis.selectList("IdealRecommendationDAO.getLikeSendList", vo);
	}
}
