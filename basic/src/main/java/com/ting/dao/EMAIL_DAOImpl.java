package com.ting.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ting.domain.ClientInfoVO;


@Repository
public class EMAIL_DAOImpl implements EMAIL_DAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public ClientInfoVO email_check(ClientInfoVO vo) {
		return mybatis.selectOne("EMAIL_DAO.email_check",vo);
	}

	@Override
	public void reset_pwd(ClientInfoVO vo) {
		mybatis.update("EMAIL_DAO.reset_pwd",vo);
		
	}

}
