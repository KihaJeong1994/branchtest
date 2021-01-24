package com.ting.service;

import com.ting.domain.ClientInfoVO;

public interface EMAIL_Service {
	
	ClientInfoVO email_check(ClientInfoVO vo);
	
	void reset_pwd(ClientInfoVO vo);

}
