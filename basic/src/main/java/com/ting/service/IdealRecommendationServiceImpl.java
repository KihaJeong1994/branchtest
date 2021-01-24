package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.IdealRecommendationDAOImpl;
import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.LikeReceiveVO;


@Service("idealRecommendationService")
public class IdealRecommendationServiceImpl implements IdealRecommendationService{

	@Autowired
	private IdealRecommendationDAOImpl idealRecommendationDAO;
	
	public void insertIdealRecommendation(IdealRecommendationVO vo) {

		idealRecommendationDAO.insertIdealRecommendation(vo);
	}

	public void updateIdealRecommendation(IdealRecommendationVO vo) {
		idealRecommendationDAO.updateIdealRecommendation(vo);
	}

	public void deleteIdealRecommendation(IdealRecommendationVO vo) {
		idealRecommendationDAO.deleteIdealRecommendation(vo);
	}

	public IdealRecommendationVO getIdealRecommendation(IdealRecommendationVO vo) {
		return idealRecommendationDAO.getIdealRecommendation(vo);
	}

	public List<IdealRecommendationVO> getIdealRecommendationList(ClientDetailInfoVO vo) {
		return idealRecommendationDAO.getIdealRecommendationList(vo);
	}
	public List<IdealRecommendationVO> getLikeSendList(IdealRecommendationVO vo) {
		return idealRecommendationDAO.getLikeSendList(vo);
	}
	
}
