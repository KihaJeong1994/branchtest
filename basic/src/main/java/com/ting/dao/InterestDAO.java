package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.InterestVO;

public interface InterestDAO {
	

	public List<InterestVO> getInterestList(InterestVO vo);
	
	
}
