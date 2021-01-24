package com.ting.dao;

import com.ting.domain.ClientInfoVO;

public interface EMAIL_DAO {
	

	
	public ClientInfoVO email_check(ClientInfoVO vo);
	
	public void reset_pwd(ClientInfoVO vo);

}
