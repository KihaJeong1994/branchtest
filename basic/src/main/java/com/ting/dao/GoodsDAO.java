package com.ting.dao;

import java.util.List;

import com.ting.domain.GoodsVO;

public interface GoodsDAO {

	
	public void insertGoods(GoodsVO vo);
	
	public GoodsVO getGoods(GoodsVO vo);
	
	public List<GoodsVO> getGoodsList(GoodsVO vo);
	

}
