package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.InterestVO;

public interface InterestService {
	

	List<InterestVO> getInterestList(InterestVO vo);
	

}
