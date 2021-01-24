package com.ting.dao;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.MbtiExplanationVO;

public interface MbtiExplanationDAO {

	// 글 상세 조회
	public MbtiExplanationVO getMbtiExplanation(ClientDetailInfoVO vo);
}
