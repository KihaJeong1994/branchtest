package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.CharmingPointDAOImpl;
import com.ting.domain.CharmingPointVO;;


@Service("charmingPointService")
public class CharmingPointServiceImpl implements CharmingPointService{

	//dao불러오는곳
	@Autowired
	private CharmingPointDAOImpl charmingPointDAO;
	
	

	public List<CharmingPointVO> getCharmingPointList(CharmingPointVO vo) {
		System.out.println("서비스진입");
		List<CharmingPointVO> result = charmingPointDAO.getCharmingPointList(vo);
		return result;
	}
	
	
}
