package com.ting.service;

import java.util.List;

import com.ting.domain.Fun_Mbtitest_0_VO;
import com.ting.domain.Fun_my_character_VO;
import com.ting.domain.Fun_test2_ideal_VO;
import com.ting.domain.Fun_test2_myself_VO;
import com.ting.domain.Fun_your_character_VO;

public interface Fun_Mbtitest_0_Service {
	
	 void insert_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo);
	 
	 void insert_Fun_my_character(Fun_my_character_VO vo);
	 
	 void insert_Fun_your_character(Fun_your_character_VO vo);
		
	 void insert_Fun_test2_myself(Fun_test2_myself_VO vo);
		
	 void insert_Fun_test2_ideal(Fun_test2_ideal_VO vo);
	
	 void retest_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;
	
	 Fun_Mbtitest_0_VO selectone_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;

	 List<Fun_Mbtitest_0_VO> selectlist_Fun_Mbtitest_0(Fun_Mbtitest_0_VO vo) ;

}
