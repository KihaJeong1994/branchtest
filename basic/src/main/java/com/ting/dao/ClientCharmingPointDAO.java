package com.ting.dao;

import java.util.List;

import com.ting.domain.ClientCharmingPointVO;
import com.ting.domain.ClientInterestVO;;

public interface ClientCharmingPointDAO {
	public void insertClientCharmingPoint(ClientCharmingPointVO vo);

	public void deleteClientCharmingPoint(ClientCharmingPointVO vo);

	public List<ClientCharmingPointVO> getClientCharmingPointList(ClientCharmingPointVO vo);
	
}
