package com.ting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.TingBoardLogVO;


@Repository("tingBoardLogDAO")
public class TingBoardLogDAOImpl implements TingBoardLogDAO {

	
	@Autowired //자동으로 주입하ㅏㄹ수있게하는 스티커
	private SqlSessionTemplate mybatis; //스프링이 만든다음에 나한테 주입

	@Override
	public void TingBoardLogging(TingBoardLogVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("tingBoardLog.read_log",vo);
	}

}
