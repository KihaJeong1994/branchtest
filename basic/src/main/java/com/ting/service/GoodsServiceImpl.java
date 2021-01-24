package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.GoodsDAOImpl;

import com.ting.domain.GoodsVO;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	
	@Autowired
	private GoodsDAOImpl GoodsDAO;
	
	
	public void insertGoods(GoodsVO vo) {
		
		GoodsDAO.insertGoods(vo);
	}

	
	public GoodsVO getGoods(GoodsVO vo) {
		
		return GoodsDAO.getGoods(vo);
		
		
	}
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		return GoodsDAO.getGoodsList(vo);
	}



	

}
