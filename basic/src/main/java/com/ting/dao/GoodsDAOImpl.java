package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ting.domain.GoodsVO;

@Repository("GoodsDAO")
public class GoodsDAOImpl implements GoodsDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	 
	
	
	
	public void insertGoods(GoodsVO vo) {
		System.out.println("===> Mybatis insertGoods() 호출");
		mybatis.insert("GoodsDAO.insertGoods", vo);
	}

	
	public GoodsVO getGoods(GoodsVO vo) {
		System.out.println("===> Mybatis getGoods() 호출");		
		return mybatis.selectOne("GoodsDAO.getGoods", vo);
	}
	
	public List<GoodsVO> getGoodsList(GoodsVO vo) {
		System.out.println("===> Mybatis getGoodsList() 호출");
		return mybatis.selectList("GoodsDAO.getGoodsList", vo);
	}


	

	

}
