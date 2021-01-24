package com.ting.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.Fun_Mbtitest_0_VO;
import com.ting.domain.Fun_my_character_VO;
import com.ting.domain.Fun_test2_ideal_VO;
import com.ting.domain.Fun_test2_myself_VO;
import com.ting.domain.Fun_your_character_VO;


@Repository("fun_Mbtitest_0_DAO")
public class Fun_Mbtitest_0_DAOImpl implements Fun_Mbtitest_0_DAO {
	
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insert_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		mybatis.insert("Fun_Mbtitest_0_DAO.insert_Fun_Mbtitest_0",vo);
	}
	
	@Override
	public void insert_Fun_my_character(Fun_my_character_VO vo) {
		mybatis.insert("Fun_Mbtitest_0_DAO.insert_Fun_my_character",vo);
		
	}
	
	@Override
	public void insert_Fun_your_character(Fun_your_character_VO vo) {
		mybatis.insert("Fun_Mbtitest_0_DAO.insert_Fun_your_character",vo);
		
	}

	@Override
	public void insert_Fun_test2_myself(Fun_test2_myself_VO vo) {
		mybatis.insert("Fun_Mbtitest_0_DAO.insert_Fun_test2_myself",vo);
		
	}

	@Override
	public void insert_Fun_test2_ideal(Fun_test2_ideal_VO vo) {
		mybatis.insert("Fun_Mbtitest_0_DAO.insert_Fun_test2_ideal",vo);
		
	}

	@Override
	public void retest_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {	
		mybatis.update("Fun_Mbtitest_0_DAO.retest_Fun_Mbtitest_0",vo);
	}

	@Override
	public Fun_Mbtitest_0_VO selectone_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		return mybatis.selectOne("Fun_Mbtitest_0_DAO.selectone_Fun_Mbtitest_0",vo);
	}

	@Override
	public List<Fun_Mbtitest_0_VO> selectlist_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		return mybatis.selectList("Fun_Mbtitest_0_DAO.selectlist_Fun_Mbtitest_0",vo);
	}

	

	

}
