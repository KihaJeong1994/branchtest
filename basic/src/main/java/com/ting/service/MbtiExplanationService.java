package com.ting.service;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.MbtiExplanationVO;


public interface MbtiExplanationService {

	// 글 상세 조회
	MbtiExplanationVO getMbtiExplanation(ClientDetailInfoVO vo);

}
