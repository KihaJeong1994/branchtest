package com.ting.service;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;

public interface ClientInterestService {
	
	void insertClientInterest(ClientInterestVO vo);

	void deleteClientInterest(ClientInterestVO vo);
	
	List<ClientInterestVO> getClientInterestList(ClientInterestVO vo);
}
