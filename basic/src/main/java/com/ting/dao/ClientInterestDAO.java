package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientDetailInfoVO;
import com.ting.domain.ClientInterestVO;

public interface ClientInterestDAO {
	public void insertClientInterest(ClientInterestVO vo);
	
	public void deleteClientInterest(ClientInterestVO vo);

	public List<ClientInterestVO> getClientInterestList(ClientInterestVO vo);
	
}
