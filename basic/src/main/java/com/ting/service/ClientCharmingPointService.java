package com.ting.service;

import java.util.List;

import com.ting.domain.ClientCharmingPointVO;
import com.ting.domain.ClientInterestVO;;

public interface ClientCharmingPointService {
	
	void insertClientCharmingPoint(ClientCharmingPointVO vo);

	void deleteClientCharmingPoint(ClientCharmingPointVO vo);
	
	List<ClientCharmingPointVO> getClientCharmingPointList(ClientCharmingPointVO vo);
}
