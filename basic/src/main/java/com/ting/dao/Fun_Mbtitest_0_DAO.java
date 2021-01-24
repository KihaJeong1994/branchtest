package com.ting.dao;

import java.util.List;

import com.ting.domain.Fun_Mbtitest_0_VO;
import com.ting.domain.Fun_my_character_VO;
import com.ting.domain.Fun_test2_ideal_VO;
import com.ting.domain.Fun_test2_myself_VO;
import com.ting.domain.Fun_your_character_VO;



public interface Fun_Mbtitest_0_DAO {
	
	public void insert_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo);
	
	public void insert_Fun_my_character(Fun_my_character_VO vo);
	
	public void insert_Fun_your_character(Fun_your_character_VO vo);
	
	public void insert_Fun_test2_myself(Fun_test2_myself_VO vo);
	
	public void insert_Fun_test2_ideal(Fun_test2_ideal_VO vo);
	
	public void retest_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;
	
	public Fun_Mbtitest_0_VO selectone_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;

	public List<Fun_Mbtitest_0_VO> selectlist_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;
	


}
