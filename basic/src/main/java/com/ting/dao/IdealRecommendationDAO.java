package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.LikeReceiveVO;

public interface IdealRecommendationDAO {
	
	public void insertIdealRecommendation(IdealRecommendationVO vo);


	public void updateIdealRecommendation(IdealRecommendationVO vo);


	public void deleteIdealRecommendation(IdealRecommendationVO vo);


	public IdealRecommendationVO getIdealRecommendation(IdealRecommendationVO vo);


	public List<IdealRecommendationVO> getIdealRecommendationList(ClientDetailInfoVO vo);
	

	public List<IdealRecommendationVO> getLikeSendList(IdealRecommendationVO vo);
}
