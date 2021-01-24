package com.ting.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.Fun_Mbtitest_0_DAOImpl;
import com.ting.domain.Fun_Mbtitest_0_VO;
import com.ting.domain.Fun_my_character_VO;
import com.ting.domain.Fun_test2_ideal_VO;
import com.ting.domain.Fun_test2_myself_VO;
import com.ting.domain.Fun_your_character_VO;

@Service("fun_Mbtitest_0_Service")
public class Fun_Mbtitest_0_ServiceImpl implements Fun_Mbtitest_0_Service {
	
	@Autowired
	private Fun_Mbtitest_0_DAOImpl fun_Mbtitest_0_DAO;

	@Override
	public void insert_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		fun_Mbtitest_0_DAO.insert_Fun_Mbtitest_0(vo);

	}
	
	@Override
	public void insert_Fun_my_character(Fun_my_character_VO vo) {
		fun_Mbtitest_0_DAO.insert_Fun_my_character(vo);
		
	}
	
	@Override
	public void insert_Fun_your_character(Fun_your_character_VO vo) {
		fun_Mbtitest_0_DAO.insert_Fun_your_character(vo);
		
	}

	@Override
	public void insert_Fun_test2_myself(Fun_test2_myself_VO vo) {
		fun_Mbtitest_0_DAO.insert_Fun_test2_myself(vo);
		
	}

	@Override
	public void insert_Fun_test2_ideal(Fun_test2_ideal_VO vo) {
		fun_Mbtitest_0_DAO.insert_Fun_test2_ideal(vo);
		
	}

	@Override
	public void retest_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		fun_Mbtitest_0_DAO.retest_Fun_Mbtitest_0(vo);

	}

	@Override
	public Fun_Mbtitest_0_VO selectone_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		return fun_Mbtitest_0_DAO.selectone_Fun_Mbtitest_0(vo);
	}

	@Override
	public List<Fun_Mbtitest_0_VO> selectlist_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) {
		return fun_Mbtitest_0_DAO.selectlist_Fun_Mbtitest_0(vo);
	}

	

	

}
