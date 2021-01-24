package com.ting.service;

import java.util.List;


import com.ting.domain.GoodsVO;

public interface GoodsService {

	
	 void insertGoods(GoodsVO vo);
	
	 GoodsVO getGoods(GoodsVO vo) ;
	 
	 List<GoodsVO> getGoodsList(GoodsVO vo);
	 

}
