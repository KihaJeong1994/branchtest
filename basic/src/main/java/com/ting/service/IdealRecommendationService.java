package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.IdealRecommendationVO;
import com.ting.domain.LikeReceiveVO;

public interface IdealRecommendationService {
	void insertIdealRecommendation(IdealRecommendationVO vo);


	void updateIdealRecommendation(IdealRecommendationVO vo);


	void deleteIdealRecommendation(IdealRecommendationVO vo);


	IdealRecommendationVO getIdealRecommendation(IdealRecommendationVO vo);


	List<IdealRecommendationVO> getIdealRecommendationList(ClientDetailInfoVO vo);
	

	List<IdealRecommendationVO> getLikeSendList(IdealRecommendationVO vo);

}
