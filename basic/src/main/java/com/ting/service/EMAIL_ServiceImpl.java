package com.ting.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ting.dao.EMAIL_DAOImpl;
import com.ting.domain.ClientInfoVO;

@Service("eMAIL_Service")
public class EMAIL_ServiceImpl implements EMAIL_Service {
	
	
	@Autowired
	private EMAIL_DAOImpl eMAIL_DAO;

	@Override
	public ClientInfoVO email_check(ClientInfoVO vo) {
		return eMAIL_DAO.email_check(vo);
	}

	@Override
	public void reset_pwd(ClientInfoVO vo) {
		eMAIL_DAO.reset_pwd(vo);
		
	}

}
